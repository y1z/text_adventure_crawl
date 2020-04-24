/// # Room
///   - represents a room in the game.
///  
pub struct Room {
  m_description: String,
  m_x_pos: u32,
  m_y_pos: u32,
}

impl Room {
  /** prints the description for the room */
  pub fn print_description(&self) {
    print!("{}", self.m_description);
  }
  /** used to create an instance of a Room struct.*/
  pub fn from(s: String, x: u32, y: u32) -> Room {
    Room {
      m_description: s,
      m_x_pos: x,
      m_y_pos: y,
    }
  }
}
