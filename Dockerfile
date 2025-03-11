FROM python:3.10.0a7-slim-buster 
# copy files from local to image
COPY . .
# install dependencies
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000
# run the app
CMD [ "python", "calc.py" ]