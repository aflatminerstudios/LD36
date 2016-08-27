///scrDamagePlayer(damage)

var damage = argument0;

health -= damage;

if (health <= 0) {
  show_message("You lose, game over!");
  scrGameOver();
}
