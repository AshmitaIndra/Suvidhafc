from flask import Flask, request, jsonify
from flask_cors import CORS

app = Flask(__name__)

@app.route('/chat', methods=['POST'])
def chat():
    user_message = request.json.get('message')
    
    # Call your RAG pipeline here (retrieval + generation)
    bot_response = "This is a dummy RAG response to: " + user_message

    return jsonify({'response': bot_response})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
