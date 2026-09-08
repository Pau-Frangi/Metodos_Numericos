---
name: teoria-latex
description: "Usa esta skill cuando debas leer, corregir, ampliar o escribir teoría académica en LaTeX imitando el estilo del autor. Analiza primero el corpus teórico disponible y conserva su voz, estructura, notación y presentación sin reproducir errores de compilación o contenido."
---

# Escritura de teoría académica en LaTeX

## Propósito y alcance

Esta skill sirve para corregir, ampliar o redactar apuntes teóricos en LaTeX para cualquier asignatura. Su objetivo es imitar el estilo real del autor a partir de los archivos de teoría disponibles, no imponer una plantilla editorial genérica.

La skill debe adaptarse al corpus que encuentre en cada proyecto:

- asignaturas matemáticas, físicas, técnicas o de otro tipo;
- teoría dividida en uno o varios archivos;
- documentos con capítulos, secciones, apuntes independientes o una estructura propia;
- entornos LaTeX personalizados o entornos estándar;
- estilos formales, conversacionales o una mezcla de ambos.

No uses ejercicios, exámenes, código, anexos o soluciones como fuente principal del estilo teórico salvo que el usuario lo pida expresamente. Si no existe una separación clara, pregunta qué archivos deben considerarse corpus de referencia.

## Lectura obligatoria antes de editar

Antes de tocar un archivo:

1. Identifica el archivo solicitado, su documento principal y los archivos que lo incluyen.
2. Lee el bloque completo que vas a cambiar si afecta a su estructura, una demostración, una definición o más de un párrafo.
3. Lee varios bloques vecinos para inferir el estilo local antes de redactar contenido nuevo.
4. Localiza las macros, entornos, paquetes y comandos que ya utiliza el corpus. Reutilízalos; no inventes una API LaTeX paralela.
5. Identifica la notación local, el idioma, el nivel de formalidad, la longitud habitual de las explicaciones y la forma de separar los bloques.
6. Comprueba cómo se ensamblan los archivos y respeta esa arquitectura.
7. Si una afirmación puede ser falsa, una hipótesis está incompleta o una convención admite dos interpretaciones razonables, detente y pregunta antes de cambiar su significado.

Antes de redactar, formula mentalmente una hipótesis concreta sobre el estilo observado: por ejemplo, “el autor introduce intuición, formaliza el resultado y termina con una interpretación”. Confírmala comparando al menos dos bloques cercanos.

## Diagnóstico del estilo

Analiza el corpus en estas dimensiones y sigue los patrones predominantes, no una excepción aislada:

- **Voz:** primera persona, tono impersonal, preguntas retóricas, lenguaje directo o formal.
- **Idioma:** lengua principal, terminología técnica en otros idiomas, tratamiento de nombres propios.
- **Progresión:** motivación, definición, fórmula, demostración, ejemplo, interpretación y conclusión.
- **Arquitectura:** uso de partes, capítulos, secciones, subsecciones, párrafos y archivos incluidos.
- **Entornos:** función y frecuencia de definiciones, teoremas, proposiciones, ejemplos, observaciones y pruebas.
- **Matemáticas:** delimitadores, displays, alineación, matrices, casos, numeración y referencias.
- **Presentación:** listas, tablas, figuras, colores, espacios manuales, comentarios y saltos de página.
- **Notación:** nombres de variables, letras para conjuntos, índices, operadores, vectores, unidades y convenciones locales.
- **Densidad:** tamaño de los párrafos, cantidad de fórmulas, grado de detalle y ritmo de las demostraciones.

Cuando el corpus sea inconsistente, conserva la variante del bloque que estás editando. No conviertas una inconsistencia local en una normalización global sin autorización.

## Identidad estilística

Si el corpus usa una voz docente y conversacional, conserva sus marcas. Son ejemplos orientativos, no frases obligatorias:

- `Veamos`, `Recordemos`, `Notemos`, `Supongamos`, `Consideremos`.
- `Ahora`, `Para ello`, `Por lo tanto`, `De donde se deduce`, `Finalmente`, `Así`.
- explicaciones intuitivas antes o después de las fórmulas;
- comentarios sobre la interpretación del resultado;
- conclusiones explícitas después de un cálculo o una demostración;
- transición gradual entre lenguaje natural y notación formal.

Si el corpus es impersonal, no introduzcas primera persona. Si usa un registro más coloquial, no lo conviertas en un tratado formal. La regla es reproducir la voz observada, no la voz preferida por el agente.

No añadas introducciones genéricas, resúmenes, bibliografía, citas, conclusiones o explicaciones meta que no pertenezcan al bloque solicitado.

Cuando la secuencia del corpus sea compatible, usa esta progresión:

1. Presentar la pregunta, la intuición o la motivación.
2. Fijar hipótesis, dominio, variables y notación.
3. Dar la definición, el resultado o la fórmula.
4. Desarrollar el razonamiento paso a paso.
5. Interpretar el resultado.
6. Cerrar con una consecuencia, condición de uso, advertencia o ejemplo.

No fuerces todos los pasos cuando el bloque sea elemental o el corpus tenga otra organización.

## Arquitectura del documento

Respeta la jerarquía que ya exista:

- no conviertas una sección en capítulo ni un archivo en una estructura nueva sin necesidad;
- conserva el número y el tipo de encabezados usados por los bloques vecinos;
- mantén los nombres de secciones existentes salvo error claro o petición explícita;
- conserva el orden de inclusión del documento principal;
- utiliza saltos de página, comandos de inclusión y archivos separados según el patrón local.

Como referencia general, una jerarquía habitual es:

- `\part` o `\chapter`: unidad grande, solo si el documento ya los usa;
- `\section`: tema principal;
- `\subsection`: bloque temático;
- `\subsubsection`: caso o desarrollo técnico;
- `\paragraph`: separación interna de un desarrollo largo.

No introduzcas niveles solo para fragmentar el texto. Los títulos deben describir el contenido y seguir el idioma y las mayúsculas del corpus.

## Entornos y función semántica

Reutiliza los entornos que existan en el documento. Si están traducidos, conserva esos nombres; si son estándar, no los reemplaces por nombres inventados.

Usa cada entorno según su función observada:

- definición: concepto, objeto, función, método o propiedad básica;
- teorema: resultado principal;
- proposición: resultado intermedio o propiedad útil;
- lema: resultado auxiliar;
- corolario: consecuencia directa;
- observación: interpretación, advertencia o caso límite;
- ejemplo: aplicación desarrollada;
- prueba: demostración, con el entorno estándar o el personalizado disponible.

No clasifiques un resultado como teorema solo para darle más importancia. Sigue la práctica del bloque vecino.

Patrón adaptable para una definición:

```latex
\begin{definicion}[Nombre]
    Sea ...
    Diremos que ... si ...
    \[
        ...
    \]
\end{definicion}
```

Sustituye `definicion` por el entorno que realmente exista. No copies este nombre si el documento utiliza otro.

Patrón adaptable para un resultado:

```latex
\begin{teorema}[Nombre del resultado]
    Bajo las hipótesis ..., se tiene que ...
    \[
        ...
    \]
\end{teorema}

\begin{proof}
    Veamos que ...
    ...
\end{proof}
```

Si un resultado se acepta sin prueba, dilo explícitamente. No fabriques una demostración para rellenar el espacio.

## Demostraciones

Las demostraciones deben seguir el ritmo del corpus. Si el estilo es narrativo, no reduzcas una prueba a una cadena muda de igualdades cuando un paso tenga contenido matemático. Si el corpus es conciso, no añadas explicaciones redundantes.

Usa transiciones compatibles con la voz del autor, por ejemplo `Veamos`, `Supongamos`, `Para ello`, `Por lo tanto`, `De donde se deduce` y `Finalmente`.

Haz visibles los casos o fases importantes cuando el corpus lo haga:

```latex
\textbf{Caso base:}

...

\textbf{Paso inductivo:}

...
```

Usa inducción, reducción al absurdo, descomposición por casos, bloques, cambios de variable u otras técnicas solo cuando sean naturales para el resultado. Puedes usar `\underbrace` para justificar una transformación importante, no para decorar cada igualdad.

Antes de conservar o escribir una demostración, comprueba:

- dimensiones, tipos y rangos de los objetos;
- dominios, regularidad y condiciones de borde;
- signos, factores, índices y límites;
- hipótesis de existencia, unicidad, invertibilidad, continuidad, simetría o positividad;
- diferencia entre implicación, equivalencia y condición suficiente;
- que cada variable mantenga el mismo significado;
- que las conclusiones tengan exactamente el alcance de las hipótesis.

Imitar el estilo nunca implica conservar una afirmación falsa.

## Matemáticas y notación

### Delimitadores y displays

Conserva el delimitador dominante del contexto inmediato. Si el corpus mezcla `$...$` y `\(...\)`, no normalices todo el documento sin petición expresa.

Para fórmulas principales, usa el formato que predomine en los bloques vecinos, normalmente uno de estos:

```latex
\[
    ...
\]
```

```latex
\begin{align*}
    ...
\end{align*}
```

Usa `aligned`, `array`, `cases`, matrices u otros entornos cuando la estructura lo requiera y el preámbulo los soporte. Varias fórmulas consecutivas son correctas si acompañan una derivación paso a paso.

### Convenciones locales

No impongas una notación universal. Identifica primero la convención del bloque. Como orientación, muchos apuntes usan mayúsculas para matrices, minúsculas para vectores, letras griegas para parámetros o valores propios y símbolos específicos para errores, pasos o raíces, pero esto no debe asumirse sin comprobarlo.

Al corregir o ampliar:

- conserva la notación ya establecida;
- no cambies globalmente una transpuesta, norma, operador o conjunto sin consultar;
- no renombres variables activas;
- define cada símbolo antes de usarlo;
- explica la relación si aparecen dos notaciones para el mismo objeto;
- reutiliza macros existentes;
- no dupliques definiciones del preámbulo dentro de un archivo de contenido.

Si una macro o entorno no existe, compruébalo antes de usarlo. Si la nueva notación exigiría modificar el preámbulo, pregunta o mantén una solución compatible con los paquetes ya cargados.

## Algoritmos, procedimientos y derivaciones

Cuando el contenido incluya un procedimiento, explica tanto qué hace como cuándo puede utilizarse. Adapta la estructura al dominio de la asignatura, pero conserva el nivel de detalle del corpus.

Una secuencia habitual es:

1. motivación o problema;
2. hipótesis de aplicabilidad;
3. fórmula, construcción o descomposición;
4. pasos ordenados;
5. condición de parada, validez, convergencia o estabilidad, si corresponde;
6. error, limitaciones o complejidad, si el corpus las trata;
7. ejemplo o comparación.

Usa `itemize` para propiedades y clasificaciones no ordenadas. Usa `enumerate` para pasos sucesivos. Conserva etiquetas manuales si son una convención del bloque.

Distingue con claridad entre conceptos que suelen confundirse en asignaturas técnicas: condición necesaria y suficiente, existencia y unicidad, precisión y exactitud, error local y global, hipótesis y conclusión, o definición y algoritmo.

## Ejemplos

Los ejemplos deben tener la misma función que en el corpus: motivar, ilustrar, verificar, comparar o aplicar una idea.

Usa el entorno o comando existente. No introduzcas una sintaxis nueva solo porque sea más cómoda.

Un ejemplo desarrollado suele incluir:

1. datos y objetivo;
2. elección de la definición o método;
3. cálculo visible;
4. resultado;
5. interpretación o comprobación.

No lo reduzcas a una respuesta final si el estilo del autor muestra los pasos.

## Tablas y figuras

Las tablas y figuras deben aportar información. No añadas decoración.

Para tablas:

- sigue el patrón del corpus, con o sin flotante;
- conserva `tabular`, `array`, `caption`, etiquetas y numeración según el contexto;
- comprueba columnas, separadores, encabezados y saltos de línea;
- no introduzcas un sistema de referencias si el documento no lo utiliza.

Para TikZ u otros dibujos:

- conserva los estilos, colores, escalas y macros locales;
- usa comentarios breves para partes no obvias si el corpus los usa;
- utiliza nombres legibles para nodos y coordenadas;
- comprueba que las etiquetas no se solapen ni rompan la compilación;
- no reemplaces una figura explicativa por una imagen externa sin necesidad;
- respeta el uso local de `center`, `figure`, `caption` y numeración.

## Espaciado y presentación

El control manual del espacio puede ser una decisión estilística del autor. Conserva el patrón local de:

- saltos `\\`;
- `\vspace{...}`;
- centros y cajas;
- fórmulas separadas en varios displays;
- texto en negrita para casos, pasos o ideas;
- colores, márgenes y separadores.

No hagas una limpieza tipográfica global durante una corrección local. Sustituir todos los saltos, delimitadores o espacios puede cambiar la apariencia deliberada y generar ruido en el diff.

## Referencias y etiquetas

El uso de `\label`, `\ref`, `\eqref`, numeración de ecuaciones, tablas o figuras depende del corpus.

Por defecto:

- conserva referencias existentes;
- corrige nombres duplicados y referencias rotas;
- añade una referencia solo si mejora claramente la navegación o el usuario la pide;
- no etiquetes todo automáticamente;
- comprueba que cada referencia apunte a un destino existente y correcto.

## Corrección de errores: orden obligatorio

Aplica las correcciones en este orden:

### 0. Compilación

Corrige primero comandos incompletos, delimitadores descompensados, entornos sin cierre, comandos no definidos, columnas incorrectas, errores de dibujos y referencias mal emparejadas.

### 1. Contenido

Corrige después errores que cambien el significado: hipótesis insuficientes, signos, índices, dimensiones, definiciones falsas, conclusiones demasiado fuertes, cálculos erróneos o pruebas inválidas.

No corrijas silenciosamente el alcance conceptual de una afirmación. Si hay dos lecturas plausibles, conserva la forma y pregunta.

### 2. Coherencia local

Define símbolos antes de usarlos, mantén las variables y unifica solo las inconsistencias que impidan entender el bloque. No impongas una convención global a un documento que trabaja localmente.

### 3. Lengua

Corrige ortografía, tildes, concordancia, frases incompletas y puntuación sin eliminar la voz del autor. Los errores lingüísticos observados en el corpus no deben imitarse como si fueran reglas estilísticas.

### 4. Presentación

Solo al final considera mejoras de espaciado, delimitadores, títulos, tablas o referencias. Limítalas al bloque tocado y no conviertas una corrección en una reescritura editorial completa.

## Preguntas obligatorias ante ambigüedad

Pregunta antes de una corrección amplia o de escribir contenido nuevo si no está claro:

1. ¿Debe corregirse solo LaTeX y ortografía, o también el contenido disciplinar?
2. ¿Hay que conservar literalmente el espaciado y la apariencia manual?
3. ¿Se permite uniformar delimitadores, entornos o notación?
4. ¿Debe mantenerse la notación local o se desea una convención global?
5. ¿Se pueden añadir referencias, etiquetas, tablas, figuras o paquetes?
6. ¿Deben conservarse exactamente colores, geometría y organización visual?
7. ¿Qué terminología o definición debe preferirse cuando existen varias convenciones?
8. ¿Qué hipótesis adicionales se presuponen en un resultado dudoso?
9. ¿Deben corregirse resultados no demostrados o solo mejorar su redacción?
10. ¿Qué bloque o archivo debe considerarse la referencia estilística principal?

Si la duda afecta solo a una tilde, un typo o un error inequívoco de compilación, corrígelo directamente. Si afecta al contenido, al alcance de un resultado, a la notación global o a una decisión estética irreversible, pregunta.

## Qué no cambiar por defecto

No cambies sin petición explícita:

- la voz y el nivel de formalidad del autor;
- el orden y la arquitectura del documento;
- los títulos y la división temática;
- la progresión explicativa;
- los entornos y macros existentes;
- la notación local;
- las demostraciones, ejemplos, tablas y figuras que no estén afectados;
- la apariencia visual intencionada;
- el preámbulo, paquetes o configuración global;
- la selección de archivos que forman el corpus de teoría.

Tampoco añadas automáticamente capítulos, bibliografía, citas, numeración global, paquetes nuevos, pseudocódigo, resúmenes o contenido de ejercicios y exámenes.

## Comprobación final

Antes de entregar:

1. Verifica que solo se han tocado los archivos solicitados y sus dependencias necesarias.
2. Comprueba cierres de entornos, delimitadores, comandos y referencias.
3. Revisa dominios, hipótesis, índices, dimensiones y signos.
4. Lee el bloque editado completo para comprobar la transición entre prosa, fórmulas y figuras.
5. Compila el documento principal si el entorno lo permite y corrige los errores relevantes.
6. Comprueba que la nueva redacción suena al autor del corpus y no a una plantilla genérica.
