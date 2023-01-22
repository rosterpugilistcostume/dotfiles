
-- TODO adapt both of these to pull from metadata styles
-- function Code(c)
--   return pandoc.RawInline('html','<span style="font-family: Inconsolata;">' .. c.text .. '</span>')
-- end

-- function CodeBlock(c)
--   return pandoc.RawBlock('html','<div style="font-family: Inconsolata;"><pre>' .. c.text .. '</pre></div>')
-- end
--

-- necessary for bullet list children to be visited after their parents
traverse = 'topdown'
last_type = ""

-- function Pandoc(doc)
--   doc.meta = pandoc.Meta({})
--   return doc
-- end

-- function Para(p)
--   last_type = "para"
--   return pandoc.List({pandoc.LineBlock({"\n"}), p})
-- end

-- function Header(p)
--   last_type = "header"
--   return pandoc.List({pandoc.LineBlock({"\n"}), p})
-- end

-- function BulletList(p)
--   ret_val = p

--   if last_type ~= "bullet_list" then
--     ret_val = pandoc.List({pandoc.LineBlock({"\n"}), p})
--   end

--   last_type = "bullet_list"

--   return ret_val
-- end

-- local function should_add_newline(first, second)
--   return true
--   -- return first and first.t ~= 'BulletList'
--   --   and second and second.t == 'BulletList'
-- end

-- function Blocks (blocks)
--   -- Go from end to start to avoid problems with shifting indices.
--   for i = #blocks-1, 1, -1 do
--     if should_add_newline(blocks[i], blocks[i+1]) then
--       blocks:insert(i+1,pandoc.LineBlock({"\n"}))
--     end
--   end

--   return blocks
-- end
