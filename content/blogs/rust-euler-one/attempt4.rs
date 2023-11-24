fn main() {
  let mut s3 = 0;
  let mut s5 = 0;

  for n in 1..334 {
    s3 += n*3;
  }

  for n in 1..200 {
    s5 += n*5;
  }

  let s =  s3 + s5;
  println!("{}", s);
  }
