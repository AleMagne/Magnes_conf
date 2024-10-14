-- custom functions

vim.api.nvim_create_user_command("Keybindings", function()
	print("Splits:                            Tabs:                        TreeSetter:                      Userful:\
    <l>an -> new vertical split         <l>tn -> new tab            <l>ii -> init selectio              gcc -> comment line\
    <l>al -> move to the next split     <l>tc -> close tab          <l>in -> increment node\
    <l>ah -> move to the prev split     <l>tk -> next tab           <l>ie -> increment scope\
    <l>aj -> move to upper split        <l>tj -> prev tab           <l>id -> decrement node\
    <l>ak -> move to bottom split")
end, {})

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
