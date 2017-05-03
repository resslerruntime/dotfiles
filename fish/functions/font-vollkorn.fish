# http://vollkorn-typeface.com/

function font-vollkorn

  set DIR (fontdir)/vollkorn
  set URL 'http://vollkorn-typeface.com/download/vollkorn-4-015.zip'

  if test -d $DIR
    echo "error: $DIR already exists"
    return 1
  end

  mkdir -p $DIR
  unzip -j (curl -sL $URL | psub) '*.ttf' -d $DIR

end
