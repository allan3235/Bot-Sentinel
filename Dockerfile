# 1. Usar una imagen oficial de Python como base
FROM python:3.11-slim

# 2. Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# 3. Copiar los archivos del proyecto al contenedor
COPY . .

# 4. Instalar las dependencias necesarias
RUN pip install --no-cache-dir -r requirements.txt

# 5. Definir una variable de entorno para modo producción (opcional)
ENV PYTHONUNBUFFERED=1

# 6. Comando para correr el bot automáticamente cuando inicie el contenedor
CMD ["python", "src/main.py"]
