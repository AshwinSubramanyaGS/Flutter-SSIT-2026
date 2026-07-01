from flask import Flask, request, jsonify
from flask_cors import CORS
from pymongo import MongoClient
import re
import datetime

app = Flask(__name__)
CORS(app)  # Allow requests from any origin (for Flutter dev)

# --- MongoDB connection ---
client = MongoClient('mongodb://localhost:27017/')
db = client['login_demo']          # Database name
users_collection = db['users']     # Collection name

# --- Seed default user if collection is empty ---
if users_collection.count_documents({}) == 0:
    default_user = {
        'email': 'ashwin@ashwin.com',
        'password': 'ashwin',    # Plain text – demo only!
        'created_at': datetime.datetime.utcnow()
    }
    users_collection.insert_one(default_user)
    print('Default user seeded: ashwin@ashwin.com')
else:
    print('Users collection already has data, skipping seed.')

# --- Validation helpers ---
def is_valid_email(email):
    pattern = r'^[^@]+@[^@]+\.[^@]+$'
    return re.match(pattern, email) is not None

def is_valid_password(password):
    return len(password) >= 6

# --- API endpoint ---
@app.route('/login', methods=['POST'])
def login():
    data = request.get_json()

    # Check if JSON body exists
    if not data:
        return jsonify({'error': 'No JSON data provided'}), 400

    email = data.get('email', '').strip()
    password = data.get('password', '')

    # Validate email
    if not email:
        return jsonify({'error': 'Email is required'}), 400
    if not is_valid_email(email):
        return jsonify({'error': 'Invalid email format'}), 400

    # Validate password
    if not password:
        return jsonify({'error': 'Password is required'}), 400
    if not is_valid_password(password):
        return jsonify({'error': 'Password must be at least 6 characters'}), 400

    # Store in MongoDB
    user_record = {
        'email': email,
        'password': password,          # In production, hash the password!
        'created_at': datetime.datetime.utcnow()
    }
    result = users_collection.insert_one(user_record)

    return jsonify({
        'message': 'Login data saved successfully',
        'id': str(result.inserted_id)
    }), 201

@app.route('/users', methods=['GET'])
def get_users():
    """Helper route to list all users (for testing)."""
    users = list(users_collection.find({}, {'_id': 0}))
    return jsonify(users), 200

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)