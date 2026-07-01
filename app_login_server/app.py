from flask import Flask, request, jsonify
from flask_cors import CORS
from pymongo import MongoClient
import datetime

app = Flask(__name__)
CORS(app)

# MongoDB connection
client = MongoClient('mongodb://localhost:27017/')
db = client['login_demo']
users_collection = db['users']

# Seed a default user if the collection is empty
if users_collection.count_documents({}) == 0:
    default_user = {
        'email': 'ashwin@ashwin.com',
        'password': 'ashwin',
        'created_at': datetime.datetime.utcnow()
    }
    users_collection.insert_one(default_user)
    print('Default user seeded: ashwin@ashwin.com')

# Login endpoint – no validation, just check if user exists
@app.route('/login', methods=['POST'])
def login():
    data = request.get_json()
    if not data:
        return jsonify({'error': 'No JSON data provided'}), 400

    email = data.get('email', '').strip()
    password = data.get('password', '')

    # Look for user with matching email and password
    user = users_collection.find_one({'email': email, 'password': password})

    if user:
        return jsonify({'message': 'Login successful'}), 201
    else:
        return jsonify({'error': 'Invalid email or password'}), 404

# Helper route to view all users (optional)
@app.route('/users', methods=['GET'])
def get_users():
    users = list(users_collection.find({}, {'_id': 0}))
    return jsonify(users), 200

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)