# Plantilla LaTeX – TFG Grado en Ingeniería Multimedia (EPS, UA)

Ajustada al *Libro de Estilo para la presentación de memorias del TFG/TFM* de la EPS.

## 1. Instalación

| Sistema | Distribución LaTeX | Editor recomendado |
|---|---|---|
| Windows | MiKTeX (o TeX Live) | VS Code + LaTeX Workshop, o TeXstudio |
| macOS | MacTeX | VS Code + LaTeX Workshop, o TeXstudio |
| Linux | `sudo apt install texlive-full biber latexmk` | VS Code + LaTeX Workshop |

Con MiKTeX, activa la instalación automática de paquetes. Necesitas **Perl** para `latexmk`
(Strawberry Perl en Windows).

## 2. Compilar

```bash
latexmk -pdf main.tex     # compila todo (pdflatex + biber + índices)
latexmk -c                # limpia archivos auxiliares
```

En TeXstudio: *Opciones → Configurar → Compilación → Herramienta de bibliografía: Biber*.

## 3. Qué editar

- `config/datos.tex` → título, autor, tutor/es, fecha (portada y metadatos del PDF).
- `capitulos/*.tex` → contenido. `anexos/*.tex` → anexos.
- `bibliografia.bib` → referencias (exportables desde Zotero con Better BibTeX).
- `imagenes/` → figuras y logos de la portada:
  `logo-eps.pdf`, `logo-ua.pdf` (versión blanca) y `logo-titulacion.pdf`.
  Si no existen, la portada muestra huecos provisionales.

## 4. Correspondencia con el libro de estilo

| Requisito | Dónde |
|---|---|
| A4, dos caras, márgenes 3 / 2,5 / 2,5 / 2,5 cm con cabecera y pie dentro | `geometry` en `config/estilo.tex` |
| Interlineado 1,5 | `\onehalfspacing` |
| Títulos Helvética (fam. 1), texto Palatino (fam. 2), código Courier (fam. 3) | `helvet`, `mathpazo`, `courier` |
| Fórmulas en Palatino itálica | `mathpazo` |
| Cabeceras distintas pares/impares | `fancyhdr` |
| Portada con RGB (239, 206, 53) de Multimedia y texto negro | `config/portada.tex` |
| Orden: justificación, agradecimientos, dedicatoria, cita, índices, cuerpo, conclusiones, bibliografía, anexos | `main.tex` |
| Dedicatoria y cita: una hoja, alineación derecha | entorno `paginaderecha` |
| "Figura 2.1", "Tabla 3.2" y nota de fuente | `caption` + `\fuente{}` |
| Bibliografía APA en familia 1 | `biblatex` (`style=apa`, `\bibfont`) |

Para usar el sistema numérico ISO 690: cambia `style=apa` por `style=iso-numeric`.

## 5. Entrega
La memoria se entrega en **PDF**, junto al resto de archivos, en un único `.zip`/`.rar`
por el Campus Virtual.
