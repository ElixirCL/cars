# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Backend.Repo.insert!(%Backend.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Backend.Cars.Car
alias Backend.Makers.Maker
alias Backend.Repo

%Maker{id: 1, name: "Volkswagen"} |> Repo.insert!()

%Car{
  image_url:
    "https://user-images.githubusercontent.com/292738/154881639-7d767de7-73b9-4c60-ac7a-733f39bb1455.png",
  maker_id: 1,
  model: "1989 Volkswagen Kombi Type 2",
  about: """
  Volkswagen introduced the second generation of their Type 2 in 1967. Known as the T2, the second generation of Type 2 van featured a new and more angular front end, as well as a single front window. This single windscreen has given the T2 its nickname the "Bay Window." While sporting updated styling, the T2 still carried many of the styling cues established in the first generation. The T2 featured many notable variants, including the Westfalia. Built until 1979, the T2 was replaced by the T3 Type 3.
  """
}
|> Repo.insert!()

%Car{
  image_url:
    "https://user-images.githubusercontent.com/292738/154887661-8bc50ade-3893-4c80-a2b7-5eb7caecc7df.png",
  maker_id: 1,
  model: "1985 Volkswagen Beetle Type 1",
  about: """
  The Volkswagen Type 1, or Beetle, was first introduced in 1938. The Type 1 was the result of the Third Reich's vision for a 'Volks Wagen' (meaning People's Car in English), an inexpensive and simple car for the German public. Engineered by Ferdinand Porsche, the rear engined Type 1 was a revolution in packaging and design when it was released. The Type 1 Beetle has become a cultural icon since its creation, and is one of the world's most produced cars. The Beetle was sold as a sedan or convertible, although it is common to find many Beetles modified to different body styles. Many variants have been offered over the years, with one of the most well known being the Super Beetle. The Type 1 remained in production until 2003, ending its 65 year production run, although sales of the Type 1 Beetle ended in 1979 for the US and Canada.
  """
}
|> Repo.insert!()
