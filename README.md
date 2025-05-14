
# 🧠 NLP Judicial Chatbot

An AI-powered chatbot designed to assist users with judicial or legal queries using a **Retrieval-Augmented Generation (RAG)** pipeline. This project integrates powerful large language models (LLaMA-2), LangChain tools, and legal datasets to provide relevant and contextual legal responses.

---

## 🚀 Project Overview

The NLP Judicial Chatbot serves as a legal assistant that can:

- Understand user queries about legal topics.
- Retrieve the most relevant legal content from a custom dataset.
- Generate human-like responses using an advanced language model.
- Provide context-grounded answers using Retrieval-Augmented Generation (RAG).

---

## 🧩 Features

- 💬 Interactive legal Q&A using LLaMA 2 (via HuggingFace Transformers).
- 🔍 Context-aware responses through vector-based retrieval using ChromaDB.
- 🧠 Embedding generation using `HuggingFaceEmbeddings`.
- 🧱 Modular notebooks for preprocessing, modeling, and experimentation.

---

## 🏗️ Architecture

```
+-----------------+          +------------------+          +--------------------+
|   User Query    |  ---->   |    Vector Store   |  ---->   |   Language Model    |
+-----------------+          | (ChromaDB + Embeds)|         | (LLaMA 2 via HF)   |
                             +------------------+          +--------------------+
                                          |
                                  Relevant Context
                                          |
                                  Final Answer
```

**Core Components:**

- `LLaMA-2 7B` model (`NousResearch/Llama-2-7b-chat-hf`)
- LangChain:
  - `ChatPromptTemplate`
  - `HuggingFacePipeline`
  - `Chroma` Vector Store
  - `RetrievalQA`
- Embedding generation: `sentence-transformers/all-MiniLM-L6-v2`

---

## 📂 Project Structure

```
NLP_Judicial_Chatbot/
│
├── data.csv                        # Primary legal dataset
├── legal_literacy.csv             # Supplementary legal data
│
├── Data_PreProcessing.ipynb       # Text preprocessing and cleaning
├── data_preprocessing1.ipynb      # Alternative or experimental preprocessing
│
├── NLP_RAG_Model.ipynb            # Main model pipeline with LLaMA 2
├── RAG_V2.ipynb                   # Version 2 of RAG pipeline
├── RAG_V3.ipynb                   # Version 3 of RAG pipeline
├── nlp-rag-V4.ipynb               # Latest version with improvements
│
└── README.md                      # Project documentation
```

---

## 🛠️ Installation

1. **Clone the repository**  
   ```bash
   git clone https://github.com/yourusername/NLP_Judicial_Chatbot.git
   cd NLP_Judicial_Chatbot
   ```

2. **Set up a virtual environment**  
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

3. **Install dependencies**  
   ```bash
   pip install -r requirements.txt
   ```

> If `requirements.txt` is missing, make sure to install:
```bash
pip install langchain transformers bitsandbytes chromadb pandas sentence-transformers
```

4. **Download the LLaMA model (optional if cached)**  
   You may need Hugging Face credentials for downloading large models like:
   ```
   NousResearch/Llama-2-7b-chat-hf
   ```

---

## 🧪 How to Use

1. Open `NLP_RAG_Model.ipynb` in Jupyter or VS Code.
2. Load your data from `data.csv`.
3. Run all cells to:
   - Preprocess the data
   - Split into chunks
   - Embed and store in Chroma
   - Query using LangChain RAG
4. Ask legal questions at the end using `retrieval_chain.run("Your question")`.

---

## 📊 Example Usage

```python
question = "What is the punishment for theft under IPC?"
response = retrieval_chain.run(question)
print(response)
```

---

## 📘 Legal Datasets

This project includes:
- Indian Penal Code summaries and FAQs
- Legal literacy datasets in CSV format

---

## 🤝 Contributing

Contributions are welcome! To contribute:
1. Fork the repository
2. Create a feature branch
3. Submit a pull request

---

## 📝 License

This project is licensed under the MIT License. See `LICENSE` for details.

---

## 🙌 Acknowledgments

- [HuggingFace](https://huggingface.co/)
- [LangChain](https://www.langchain.com/)
- [Nous Research](https://huggingface.co/NousResearch)
- Indian Legal Open Datasets
