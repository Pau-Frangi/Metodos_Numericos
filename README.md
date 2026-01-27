# Plantilla de Apuntes — Doble Grado Matemáticas + Ingeniería Informática (UCM)

Esta es una plantilla LaTeX pensada para tomar apuntes, recopilar ejercicios y ordenar exámenes de las asignaturas de Matemáticas del Doble Grado Matemáticas + Ingeniería Informática de la UCM. Está organizada para que puedas mantener un esquema limpio por temas, separar teoría de ejercicios/exámenes y reutilizar preámbulos y recursos comunes (comandos, TikZ, imágenes, apéndices).

## Requisitos

- TeX en Windows: TeX Live o MiKTeX (recomendado: TeX Live actualizado)
- Compilador: `latexmk` (preferido) o `pdflatex`/`xelatex`/`lualatex`
- Editor: VS Code, TeXstudio o Overleaf (funciona subiendo todo el proyecto)

## Estructura del proyecto

- [main.tex](main.tex): punto de entrada. Incluye preámbulo y agrega teoría, ejercicios y apéndices.
- [Preamble/](Preamble): preámbulo y comandos comunes.
	- [Preamble/Preamble.tex](Preamble/Preamble.tex): paquetes, opciones de documento y configuración global.
	- [Preamble/Diagonal Matrix Command.tex](Preamble/Diagonal%20Matrix%20Command.tex): ejemplo de comando matemático personalizado.
- [Theory/](Theory): teoría organizada por temas.
	- Índice: [Theory/Theory.tex](Theory/Theory.tex)
	- Ejemplo: [Theory/1 - Nombre primer tema.tex](Theory/1%20-%20Nombre%20primer%20tema.tex).
- [Exercises/](Exercises): hojas de ejercicios.
	- Índice: [Exercises/Hojas.tex](Exercises/Hojas.tex)
	- Ejemplo: [Exercises/Hoja1.tex](Exercises/Hoja1.tex).
- [Exams/](Exams): exámenes y resoluciones.
	- Índice: [Exams/Examenes Resueltos.tex](Exams/Examenes%20Resueltos.tex)
	- Ejemplo: [Exams/Examen 1.tex](Exams/Examen%201.tex).
- [Appendix/](Appendix): apéndices y agradecimientos.
	- Índice: [Appendix/Appendix.tex](Appendix/Appendix.tex)
	- Ejemplo: [Appendix/Agradecimientos.tex](Appendix/Agradecimientos.tex)
- [TikZ/](TikZ): dibujos TikZ reutilizables.
- [images/](images): figuras e imágenes.

Nota: en teoría, ejercicios, exámenes y apéndices, el primer archivo general listado es el índice y el segundo es un archivo de ejemplo.

## Uso rápido

1. Abre [main.tex](main.tex) y compila para verificar que el proyecto genera el PDF.
2. Duplica un tema en [Theory/](Theory) (por ejemplo, usa como plantilla [Theory/1 - Nombre primer tema.tex](Theory/1%20-%20Nombre%20primer%20tema.tex)) y cámbiale el nombre.
3. Incluye el nuevo tema desde [Theory/Theory.tex](Theory/Theory.tex) usando `\input{...}` o `\include{...}`.
4. Añade tus ejercicios en [Exercises/](Exercises) y, si quieres, vincúlalos desde [Exercises/Hojas.tex](Exercises/Hojas.tex).
5. Guarda dibujos en [TikZ/](TikZ) y figuras en [images/](images), inclúyelos con `\input{...}` o `\includegraphics{...}`.

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

## Personalización

- Preámbulo: edita [Preamble/Preamble.tex](Preamble/Preamble.tex) para paquetes, estilos y opciones de idioma.
- Comandos propios: añade comandos nuevos (por ejemplo, para matrices, entornos de teoremas, etc.) en [Preamble/Diagonal Matrix Command.tex](Preamble/Diagonal%20Matrix%20Command.tex) o crea archivos específicos dentro de [Preamble/](Preamble) y cárgalos desde el preámbulo.
- Estructura por asignaturas: puedes crear subcarpetas por asignatura dentro de [Theory/](Theory), [Exercises/](Exercises) y [Exams/](Exams) si prefieres separar por materia/curso.

## Convenciones sugeridas

- Un archivo por tema de teoría y su referencia desde [Theory/Theory.tex](Theory/Theory.tex).
- Hojas de ejercicios numeradas en [Exercises/](Exercises) y referencia desde [Exercises/Hojas.tex](Exercises/Hojas.tex).
- Exámenes por fecha en [Exams/](Exams), y resoluciones aparte si procede.
- Recursos gráficos centralizados en [TikZ/](TikZ) e [images/](images) para reutilización.

## Notas

- Esta plantilla es neutral y se adapta a tus preferencias de estilo (fuente, márgenes, encabezados). Ajusta lo necesario en el preámbulo.
- Si utilizas paquetes que requieren múltiples compilaciones (índices, glosarios, referencias cruzadas), `latexmk` lo gestiona automáticamente.

---

¿Sugerencias o mejoras? Abre una incidencia o propone un cambio. ¡Que te sea útil para organizar tus apuntes del Doble Grado en la UCM!

