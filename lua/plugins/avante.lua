return {
  "yetone/avante.nvim",
  opts = {
    provider = "gemini",
    acp_providers = {
      ["gemini-cli"] = {
        command = "gemini",
        args = { "--experimental-acp" },
        env = {
          NODE_NO_WARNINGS = "1",
          GEMINI_API_KEY = os.getenv("AVANTE_GEMINI_API_KEY"),
        },
      },
    },
    providers = {
      gemini = {
        model = "gemini-2.5-flash",
        timeout = 30000, -- Timeout in milliseconds
        extra_request_body = {
          temperature = 0.75,
          max_tokens = 8192,
        },
      },
    },
  },
}
