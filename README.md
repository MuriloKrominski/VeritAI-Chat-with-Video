<a href="https://veritai-chat-with-video.streamlit.app">
<img src="https://raw.githubusercontent.com/MuriloKrominski/VeritAI-Chat-with-Video/refs/heads/main/VeritAI-Chat-with-Video.png" alt="VeritAI - Chat with Video" style="max-width: 1280px; max-height: 640px; width: au
to; height: auto;">
</a>

# VeritAI - Chat with Video
<br>
By <a href="https://murilokrominski.github.io/autor.htm">Murilo Krominski</a>.

VeritAI is an AI-powered chatbot that allows users to interact with the content of YouTube videos. Using the video transcript as a basis, VeritAI can answer questions and clarify doubts about the content, providing an intuitive interface built with **Streamlit**.

This project was developed by **Murilo Krominski** and serves as a simplified, efficient solution for integrating language models into applications that interact with data extracted from videos.

## 📜 Table of Contents
- [Overview](#overview)
- [Dependencies](#dependencies)
- [Installation](#installation)
- [Configuration](#configuration)
- [How to Use](#how-to-use)
- [Code Structure](#code-structure)
- [Usage Example](#usage-example)
- [Contributing](#contributing)
- [License](#license)

---

## Overview

**VeritAI - Chat with Video** is an interactive tool designed to help users access information contained in YouTube videos without watching the entire video. By providing a video link, the application loads the video transcript and uses a language model to answer questions based on this content. This chatbot can be useful for:
- Quickly reviewing long content;
- Obtaining specific answers about topics discussed in a video;
- Informative interactions in teaching and research projects.

## Dependencies

This project relies on the following libraries:

- **streamlit==1.39.0**: For creating an interactive web interface.
- **langchain==0.3.7**: For language model integration.
- **langchain-groq==0.2.1**: Tools for using Groq's model with LangChain.
- **langchain-community==0.3.5**: LangChain community module with additional plugins.
- **youtube_transcript_api**: For extracting YouTube video transcripts.
- **python-dotenv**: For loading environment variables from a `.env` file.

To install these dependencies, you can run the following command:

```bash
pip install -r requirements.txt
```

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/murilokrominski/veritai-chat-with-video.git
   cd veritai-chat-with-video
   ```

2. Install the dependencies:

   ```bash
   pip install -r requirements.txt
   ```

## Configuration

1. Create a `.env` file in the project root to store your Groq API key:

   ```plaintext
   GROQ_API_KEY=your_groq_api_key_here
   ```

   Replace `your_groq_api_key_here` with a valid API key from Groq.

2. Ensure the project is correctly configured by running:

   ```bash
   streamlit run app.py
   ```

3. The application will open in a browser, typically at `http://localhost:8501`.

## How to Use

1. **Provide the video URL**: Enter the link of a YouTube video in the designated input field.
   
   Example: `https://youtu.be/KKNCiRWd_j0`

2. **Load Transcript**: The video transcript will be loaded automatically, and a success message will appear once the content is ready.

3. **Enter a Question**: Type your question about the video content and press `Enter`.

4. **View the Response**: VeritAI will respond based on the video transcript, providing a context-based answer.

## Code Structure

- **app.py**: The main file that defines the chatbot logic and the user interface using Streamlit.
  - `generate_response(messages, document)`: Uses a language model to respond to user questions.
  - `load_content(url_youtube)`: Loads the video transcript using `YoutubeLoader`.
  - `st.session_state["messages"]`: Maintains a history of questions and answers during the session.
- **.env**: File to store the API key, kept outside version control for security.

## Usage Example

After entering the YouTube video link, you can interact with the chatbot by asking specific questions about the video content. Here’s an example dialogue:

- **You**: "What is the main topic of this video?"
- **VeritAI**: "The video explores the impact of AI on the tech industry, discussing the benefits and ethical concerns involved."

This type of interaction is helpful for understanding video content without needing to watch the entire video.

## Contributing

Contributions are welcome! Feel free to open issues and pull requests for improvements. This project is open to suggestions for new features, performance optimizations, and bug fixes.

1. Fork the project.
2. Create a new branch with your feature: `git checkout -b my-new-feature`.
3. Commit your changes: `git commit -m 'Add new feature'`.
4. Push to the original branch: `git push origin my-new-feature`.
5. Open a Pull Request.

## License

Distributed under the MIT License. See `LICENSE` for more information.

---

Developed by [Murilo Krominski](https://murilokrominski.github.io).