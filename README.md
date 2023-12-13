# Introduction 
Proyecto de orquestacion de modulos de terraform para infra en GCP con azure pipelines.

# Getting Started

1.	Creacion de cuenta de servicio con permisos para creacion de recursos solicitados. 
2.	Creacion de key json para cuenta de servicio
3.  Creacion de bucket donde se almacenara el tfstate
4.	Creacion de Library por ambiente (dev-qa-prd)
5.	Setear dentro de library: 
    - email_service_account (correo de cuenta de servicio)
    - gcp_project_id (id del proyecto de gcp)     
    - git_access_token (token GIT de azure devops con acceso a repositorio de modulos)                       
    - json_key_name (nombre del archivo donde esta el json de autenticacion)
    - service_account_json_path (ubicacion y nombre del archivo del json con la key) ej: /home/vsts/work/1/s/service.json
6. Cargar como Secure File dentro de azure devops el archivo json con la key de la cuenta de servicio (el nombre del archivo debe ser el mismo declarado en la library)
7. Estructura del repositorio
~~~
tf-infra-orchestrator
│   └───environments
│       ├───dev
│       ├───prod
│       └───qa
~~~

8. Dentro de las carpetas de nombre de cada ambiente se generan los archivos necesarios para crear la infra de cada ambiente, asi mantenemos la independencia de cada uno.
Los archivos dentro de cada carpeta son:
    - main.tf : donde se crean los llamados a modulos de la infra a crear.
    - providers.tf : donde se define el provider a usar (gcp en este caso).
    - variable_def.tf : donde se declaran las variables a usar por el proyecto.
    - variable_set.tfvars : donde se setean los valores de las variables.
    - versions.tf : donde se definen las versiones de terraform y el provider minimas a usar junto con esto se configura el backend, que es donde se persistira el archivo de estado de terraform, en este caso un bucket dentro del mismo proyecto de gcp (es necesario crearlo antes).

8. Datos sensibles dentro de los archivos tf deben manejarse reemplazando este usando la funcion replace token como por ejemplo #{git_access_token}# 

# Build and Test
TODO: Describe and show how to build your code and run the tests. 

# Contribute
TODO: Explain how other users and developers can contribute to make your code better. 

