# dotfiles :page_facing_up:

Este repositorio contiene las configuraciones de las herramientas que más utilizo en mi entorno de desarrollo **Debian Linux con XFCE**, respaldadas mediante copia directa sin usar GNU Stow o enlaces simbólicos.

## Contenido

- **`bash/`**: Configuración de shell y alias personalizados (`.bashrc`, `.bash_aliases`).
- **`alacritty/`**: Configuración principal del emulador de terminal.
- **`eza/`**: Configuración visual para el reemplazo de `ls`.
- **`git/`**: Configuración global de Git (`config`).
- **`micro/`**: Preferencias y atajos del editor de texto de terminal.
- **`tmux/`**: Configuración de atajos y tema para `tmux`.
- **`rofi/`**: Preferencias y tema del lanzador de aplicaciones.
- **`sync.sh`**: Script para copiar los archivos actualizados desde `~/.config` y `~/` hacia este repositorio y mantenerlos sincronizados.

## Sincronización

Para actualizar el repositorio con los últimos cambios locales:

```bash
./sync.sh
```

## Notas
- Para terminar de configurar `tmux` se necesita instalar Tmux Plugin Manager (TPM) y luego instalar los respectivos plugins.
- Asegurarse de tener instalada la fuente JetBrainsMono Nerd Font para visualizar correctamente los íconos en la terminal.
