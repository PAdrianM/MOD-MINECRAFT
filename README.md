# World Reset on Death — Data Pack (Minecraft 26.3, funciona en Realms)

Si cualquier jugador muere, todos pasan a espectador con cuenta regresiva y luego
reaparecen en un punto aleatorio (±1 000 000 bloques), siempre a 50 000+ bloques del spawn anterior
y del spawn original, con inventario, cofre de Ender, XP,
efectos, logros y recetas a cero. Ideal para mundos hardcore.

## Instalar en un Realm (lo hace el dueño)
1. En el Realm: Configurar → Respaldos / Descargar el mundo (o crea uno nuevo en hardcore en un jugador).
2. Copia la carpeta (o el .zip) en `saves/<mundo>/datapacks/`.
3. Abre el mundo una vez en un jugador para comprobar que carga.
4. Configurar Realm → Reemplazar mundo → Subir mundo.

## Comandos (op)
- `/function worldreset:now` — reiniciar ya
- `/function worldreset:enable` / `disable`
- `/function worldreset:info`
- Segundos de cuenta regresiva: `/scoreboard players set #seconds wr.state 10`

## Limitaciones
- Misma semilla (el terreno es nuevo por ser una zona sin explorar).
- Los items y la XP que suelta el que muere se borran automáticamente.
- Si ya mataron al Ender Dragon, el End sigue derrotado.
