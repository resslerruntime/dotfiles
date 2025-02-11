# https://github.com/adobe-fonts/source-sans-pro/releases

function font-source-sans-pro

  set DIR (fontdir)/source-sans-pro
  set URL (github-download-url adobe-fonts/source-sans-pro | grep VAR)

  if test -d $DIR
    echo "error: $DIR already exists"
    return 1
  end

  mkdir -p $DIR
  unzip -j (curl -sL $URL | psub) 'VAR/*.otf' -d $DIR

end
