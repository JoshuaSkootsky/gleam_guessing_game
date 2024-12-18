import gleam/erlang
import gleam/int
import gleam/io
import gleam/string

pub fn main() {
  io.println("Wlcome to the number guessing game!")
  io.println("I'm thinking of a number between 1 and 100.")

  let target = 42
  // We could make this random, but keeping it simple for now

  game_loop(target)
}

fn game_loop(target: Int) {
  io.print("Enter your guess: ")

  case erlang.get_line(prompt: "") {
    Ok(line) -> {
      case
        string.trim(line)
        |> int.parse()
      {
        Ok(guess) -> check_guess(guess, target)
        Error(_) -> {
          io.println("Please enter a valid number!")
          game_loop(target)
        }
      }
    }
    Error(_) -> {
      io.println("Error reading input!")
      game_loop(target)
    }
  }
}

fn check_guess(guess: Int, target: Int) {
  case guess {
    _ if guess == target -> io.println("Congratulations! You got it!")
    _ if guess < target -> {
      io.println("Too low! Try again.")
      game_loop(target)
    }
    _ -> {
      io.println("Too high! Try again.")
      game_loop(target)
    }
  }
}
