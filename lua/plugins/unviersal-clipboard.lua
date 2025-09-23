-- also install xclip to use clipboard outside of vim (this is for error copying and such not for yankiung)
return {
  "swaits/universal-clipboard.nvim",
  event = "TextYankPost",
  opts = {
    verbose = true,
  },
}