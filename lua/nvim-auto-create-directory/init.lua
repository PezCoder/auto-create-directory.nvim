local M = {}

function M.create_directory_if_needed()
  local file_path = vim.fn.expand('%:p')
  local dir_path = vim.fn.fnamemodify(file_path, ':h')

  if not vim.loop.fs_stat(dir_path) then
    os.execute('mkdir -p ' .. dir_path)
  end
end

function M.setup()
  local augroup_name = "auto_create_directory"
  local autocmd_event = {"BufWritePre"}
  local autocmd_pattern = "*"

  -- Create or get an augroup
  vim.api.nvim_create_augroup(augroup_name, {clear = true})

  -- Create a new autocmd
  vim.api.nvim_create_autocmd(autocmd_event, {
    group = augroup_name,
    pattern = autocmd_pattern,
    callback = M.create_directory_if_needed,
  })
end

return M
