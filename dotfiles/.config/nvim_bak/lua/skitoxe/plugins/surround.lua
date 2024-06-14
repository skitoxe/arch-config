-- Används för att radera, modifiera omlsutande symboler och taggar. se här: https://youtu.be/6pAG3BHurdM?si=8_nmkGxivaaHUqaS&t=3579
return {
  "kylechui/nvim-surround",
  event = { "BufReadPre", "BufNewFile" },
  version = "*", -- Use for stability; omit to use `main` branch for the latest features
  config = true,
}
