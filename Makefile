notebooks_work_directory = "${CURDIR}/notebooks"
notebook_data_directory = "${CURDIR}/notebooks/data"
image_tag = "jupyter-ds-1.1.0"
image_name = "yp14_notebooks"
container_name = "notebook"

makedirs:
	mkdir notebooks
	mkdir notebooks/data

run:
	jupyter notebook --ip 0.0.0.0 --no-browser notebooks

requirements:
	python -m pip install --upgrade pip
	pip install --no-cache-dir -r requirements.txt 
	jupyter contrib nbextension install --user
	jupyter nbextension enable code_prettify/code_prettify 
	jupyter nbextension enable toc2/main
	jupyter nbextension enable collapsible_headings/main