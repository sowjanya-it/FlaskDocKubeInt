FROM python:latest 
WORKDIR /python-flask-docker 
COPY . /python-flask-docker 
RUN pip install -r requirements.txt 
EXPOSE 8000 
CMD ["python","./app.py"] 
