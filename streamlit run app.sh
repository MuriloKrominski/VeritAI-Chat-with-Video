#!/bin/bash

# Caminho para o arquivo Python a ser executado
app_path="app.py"

# Verifica se o Streamlit está instalado
if ! command -v streamlit &> /dev/null
then
    echo "Streamlit não está instalado. Por favor, instale o Streamlit usando 'pip install streamlit'."
    exit
fi

# Verifica se o arquivo app.py existe
if [ ! -f "$app_path" ]; then
    echo "O arquivo $app_path não foi encontrado. Certifique-se de que está no mesmo diretório."
    exit 1
fi

# Executa o Streamlit
echo "Iniciando o Streamlit..."
streamlit run "$app_path"