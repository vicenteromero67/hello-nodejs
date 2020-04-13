#!/bin/sh
# Cambia el contraste del Gnome
# 1 es el valor normal
# 0.x mejora el contraste de valores claros
# pero difumina el resto: white washing
# 1.x mejora el contraste de valores oscuros
xgamma -gamma $1
