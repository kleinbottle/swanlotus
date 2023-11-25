 // Attempt Number 3
fn main() {
  let mut s3 = 0;
  let mut s5 = 0;
  let mut s15 = 0;

  for n in 1..334 {
    s3 += n*3;
  }

  for n in 1..200 {
    s5 += n*5;
  }

  for n in 1..67 {
    s15 += n*15;
  }
  println!("{}", s3 + s5 - s15);
  }

