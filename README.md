# Kaggle Books Dataset API

Este proyecto implementa una API para el dataset de libros de Kaggle, proporcionando endpoints para consultar y manipular datos de libros.

## Requisitos

El proyecto requiere las siguientes librerías de Python:

```txt
fastapi==0.95.0
uvicorn==0.21.1
pandas==2.0.0
python-dotenv==1.0.0
requests==2.28.2
```

## Instalación

1. Clone el repositorio:
```bash
git clone https://github.com/yourusername/kaggle-books-dset.git
cd kaggle-books-dset
```

2. Cree el entorno virtual
```
python -m venv env
```
o
```
python3 -m venv env
```

3. Activar el entorno virtual dependiendo de tu SO

Windows:
```bash
.\env\Scripts\activate
```

Linux/macOS:
```bash
source env/bin/activate
```


4. Instale las dependencias:
```bash
pip install -r requirements.txt
```

## Uso

Para iniciar el servidor API:

```bash
uvicorn app:app --reload
```

El servidor se iniciará en `http://localhost:8000`

## API Documentation

Una vez que el servidor esté en ejecución, puede acceder a la documentación de la API en:
- Swagger UI: `http://localhost:8000/docs`
- ReDoc: `http://localhost:8000/redoc`
