from dotenv import load_dotenv
import os

# Load env file based on ENV_NAME or fallback
env_file = f".env.{os.getenv('ENV_NAME', 'dev')}"
load_dotenv(dotenv_path=env_file)

# Access environment variables
database_url = os.getenv("DATABASE_URL")