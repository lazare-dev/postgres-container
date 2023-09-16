import os
from flask import Flask, request, jsonify
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = f"postgresql://{os.environ['POSTGRES_USER']}:{os.environ['POSTGRES_PASSWORD']}@{os.environ['POSTGRES_HOST']}:{os.environ['POSTGRES_PORT']}/{os.environ['POSTGRES_DB']}"
db = SQLAlchemy(app)

# define the database model (SQLAlchemy)

@app.route('/api/resource', methods=['GET'])
def get_resource():
    # get shit goes here
    pass

@app.route('/api/resource', methods=['POST'])
def create_resource():
     # post shit goes here    
    pass

@app.route('/api/resource/<int:id>', methods=['PUT'])
def update_resource(id):
     # put shit goes here    
    pass

@app.route('/api/resource/<int:id>', methods=['DELETE'])
def delete_resource(id):
     # get shit goes here    
    pass

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
