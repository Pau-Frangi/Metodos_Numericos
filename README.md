# Métodos Numéricos

Apuntes de la asignatura de Métodos Numéricos del Doble Grado en Matemáticas e Ingeniería Informática de la Universidad Complutense de Madrid. El material está basado en las clases del profesor Valeri Makarov y ha sido elaborado por Pau Frangi Mahiques, Diego Rodríguez Cubero y Jaime Nieto Petinal.

El repositorio reúne la teoría de la asignatura, hojas de ejercicios, exámenes resueltos y códigos de MATLAB relacionados con las prácticas y los métodos estudiados.

## Requisitos

- TeX en Windows: TeX Live o MiKTeX (recomendado: TeX Live actualizado)
- Compilador: `latexmk` (preferido) o `pdflatex`/`xelatex`/`lualatex`
- Editor: VS Code, TeXstudio o Overleaf (funciona subiendo todo el proyecto)

## Estructura del proyecto

- [main.tex](main.tex): documento principal y punto de entrada de la compilación.
- [Preamble/](Preamble): preámbulo, comandos y texto introductorio.
- [Theory/Theory.tex](Theory/Theory.tex): índice de los siete temas de teoría.
- [Theory/](Theory): matrices, sistemas lineales, métodos iterativos, interpolación, diferenciación, integración y ecuaciones no lineales.
- [Exercises/Hojas.tex](Exercises/Hojas.tex): índice de las hojas de ejercicios incluidas.
- [Exercises/](Exercises): hojas de ejercicios de la asignatura.
- [Exams/Examenes Resueltos.tex](Exams/Examenes%20Resueltos.tex): índice de los exámenes resueltos.
- [Exams/](Exams): exámenes y sus resoluciones.
- [Appendix/](Appendix): normas, agradecimientos y material complementario.
- [Matlab Codes/](Matlab%20Codes): implementaciones en MATLAB de métodos y prácticas.
- [images/](images): imágenes y recursos gráficos utilizados en el documento.

## Uso rápido

1. Abre [main.tex](main.tex) y compila para generar el documento completo.
2. Para añadir teoría, crea o modifica el archivo correspondiente en [Theory/](Theory) y enlázalo desde [Theory/Theory.tex](Theory/Theory.tex).
3. Para añadir ejercicios o exámenes, incorpora el archivo en [Exercises/](Exercises) o [Exams/](Exams) y actualiza su índice.
4. Guarda las implementaciones numéricas y las prácticas en [Matlab Codes/](Matlab%20Codes).

## Compilación

Recomendado con `latexmk` (auto-detección de dependencias y recompilaciones):

```bash
latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex
```

Alternativas:

```bash
pdflatex main.tex
pdflatex main.tex  # ejecutar dos veces para referencias
```

En Overleaf: sube toda la carpeta y establece [main.tex](main.tex) como archivo principal.

## Convenciones

- Mantener un archivo por tema de teoría y enlazarlo desde [Theory/Theory.tex](Theory/Theory.tex).
- Numerar las hojas de ejercicios y conservar el índice de [Exercises/Hojas.tex](Exercises/Hojas.tex) actualizado.
- Centralizar las figuras en [images/](images) y los códigos de cálculo en [Matlab Codes/](Matlab%20Codes).

## Licencia

El documento se distribuye bajo la licencia [CC BY-NC-ND 3.0](https://creativecommons.org/licenses/by-nc-nd/3.0/): se permite compartirlo con atribución, sin uso comercial y sin distribuir obras derivadas.

---

¿Sugerencias, correcciones o mejoras? Abre una incidencia o envía una contribución mediante un *pull request*.

