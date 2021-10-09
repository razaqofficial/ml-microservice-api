FROM python:3.7.3-stretch

## Step 1:
WORKDIR /app

## Step 2:
COPY . app.py /app/

## Step 3:
# hadolint ignore=DL3013
RUN pip install --upgrade pip && pip install -r requirements.txt

## Step 4:
Expose 8080

## Step 5:
CMD ["python", "app.py"]
