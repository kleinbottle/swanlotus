fn main() {
  let mut s = 0;
  let mut s3 = 0;
  let mut s5 = 0;

  for n in 1..333 {
    s3 += n*3;
  }

  for n in 1..200 {
    s3 += n*5;
  }

  s = s3 + s5;
  println!("{}", s5);
  }
