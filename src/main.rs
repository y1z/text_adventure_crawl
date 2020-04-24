mod room;

fn main() {
  let _test_description = String::from("fuck my life");

  let a = room::Room::from(_test_description, 0, 0);
  a.print_description();
}
