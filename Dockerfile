FROM python:3.9

WORKDIR /app

COPY . .

RUN pip install pandas scikit-learn joblib

CMD ["python", "train.py"]