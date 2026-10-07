# World Reset (Data Pack, Minecraft 26.3, funciona en Realms)

## Qué hace
**Reinicio al morir:** si cualquier jugador muere, todos pasan a espectador con una cuenta regresiva
y luego reaparecen juntos en un punto aleatorio (±1 000 000 bloques), siempre a más de 50 000 bloques
del spawn anterior y del original. Se reinician inventario, cofre de Ender, XP, efectos, logros,
recetas, vida y hambre. Los items y la XP que suelta el que murió se borran.

**Inventario compartido:** todos los jugadores tienen exactamente el mismo inventario, armadura
y mano secundaria. Lo que uno recoge, gasta o tira lo ven todos. El cofre de Ender sigue siendo personal.

**Corazones compartidos:** una sola barra de vida para el equipo. Si uno recibe daño o se cura,
les pasa a todos. Si la vida del equipo llega a 0, mueren todos y se reinicia el mundo.

**Hambre compartida:** un solo nivel de hambre. Si uno come, todos se llenan; si uno gasta, baja para todos.

## Configuración
En hardcore no hay comandos, así que se configura editando
`data/worldreset/function/config.mcfunction` antes de subir el mundo (1 = activado, 0 = desactivado):
`#enabled` (reinicio), `#seconds` (cuenta regresiva), `#share_inv`, `#share_hp`, `#share_food`.

Para editarlo: descomprime el .zip dentro de `datapacks/` (como carpeta), edita el archivo y borra el .zip.

## Instalar en un Realm (lo hace el dueño)
1. Crea un mundo **nuevo** en hardcore en un jugador, con este paquete en `saves/<mundo>/datapacks/`.
2. Ábrelo una vez para comprobar que carga.
3. En el Realm: Configurar → Reemplazar mundo → Subir mundo.

Se recomienda un mundo nuevo: al instalarlo, el primer inventario que cambie pasa a ser el de todos.

## Comandos (solo en mundos con comandos activados)
`/function worldreset:info` · `now` · `enable` · `disable`

## Limitaciones conocidas
- **Inventario:** si dos jugadores cambian su inventario en el mismo tick (1/20 s), gana uno
  (un item recogido a la vez puede perderse). El item en el cursor y la cuadrícula de crafteo 2×2 no se comparten.
- **Corazones:** cada cuerpo regenera por su cuenta, así que con más jugadores el equipo se cura más
  rápido (y gasta más hambre). Los corazones dorados (absorción) son personales. Al sincronizar un
  cambio, la barra de corazones puede parpadear un instante.
- **Hambre:** subir es exacto. Bajar no tiene comando en Minecraft, así que se usa el efecto Hambre
  por ~1 s: la barra se ve verde un momento cuando baja la comida del equipo.
- El inventario compartido se guarda en 2 barriles en el borde del mundo
  (X 29999904, Y -64, Z 29999904). No los rompas.
- Misma semilla en cada reinicio. El End sigue igual si ya mataron al dragón.
