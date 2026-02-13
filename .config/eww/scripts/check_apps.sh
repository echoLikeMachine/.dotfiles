#!/bin/bash

# Defina aqui os apps: "Nome para exibir|Icone|Comando|Classe_do_WM"
# Dica: rode 'wmctrl -l -x' para descobrir a classe (4ª coluna)
APPS=(
  "Terminal|utilities-terminal|alacritty|Alacritty"
  "Navegador|google-chrome|google-chrome-stable|Google-chrome"
  "Código|visual-studio-code|code|code-oss"
)

echo -n "["
for i in "${!APPS[@]}"; do
  IFS="|" read -r name icon cmd class <<< "${APPS[$i]}"
  
  # Verifica se a classe existe na lista de janelas do Xorg
  if wmctrl -l -x | grep -i "$class" > /dev/null; then
    opened=true
  else
    opened=false
  fi

  echo -n "{\"name\":\"$name\",\"icon\":\"$icon\",\"cmd\":\"$cmd\",\"opened\":$opened}"
  [[ $i -lt $((${#APPS[@]} - 1)) ]] && echo -n ","
done
echo "]"
