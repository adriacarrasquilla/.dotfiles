return {
    "sontungexpt/url-open",
    event = "VeryLazy",
    cmd = "URLOpenUnderCursor",
    config = function()
        local status_ok, url_open = pcall(require, "url-open")
        if not status_ok then
            return
        end
        url_open.setup ({
            highlight_url = {
                all_urls = {
                    enabled = false,
                    fg = "#458588", -- "text" or "#rrggbb"
                    -- fg = "text", -- text will set underline same color with text
                    bg = nil, -- nil or "#rrggbb"
                    underline = true,
                },
                cursor_move = {
                    enabled = true,
                    fg = "#d65d0e", -- "text" or "#rrggbb"
                    -- fg = "text", -- text will set underline same color with text
                    bg = nil, -- nil or "#rrggbb"
                    underline = true,
                },
            },
        })
    end,
}
