import sys  # Imports the sys module to manage system-specific parameters and functions
from streamlit.web import cli as stcli  # Imports Streamlit's command-line interface

# Sets the command-line arguments to simulate the command: "streamlit run app.py"
# This tells Streamlit to run the app located in "app.py"
sys.argv = ["streamlit", "run", "app.py"]

# Exits the program, executing the main function of Streamlit's CLI
# This effectively runs the Streamlit app as if it were called directly from the terminal
sys.exit(stcli.main())
