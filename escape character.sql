--   Practice writing text and string literals that include special characters or quotes.
-- Simple string
select 'computer engineer';

-- Escaping single quotes by doubling them
select 'I''m a computer engineer';

-- Using E prefix to enable backslash escaping
select E'I\'m a computer engineer';

-- Using dollar-quoting to avoid escape syntax  
$tag$<string_constant>$tag$

select $$'I'm a computer engineer'$$;

-- 💡 Lesson Learned:
--   - Escaping characters helps prevent syntax errors.
--   - Dollar quoting ($$) is useful for long text blocks or strings with many quotes.
--   - Essential for writing clean, readable SQL involving text data.
