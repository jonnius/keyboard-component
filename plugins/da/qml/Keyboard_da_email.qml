/*
 * Copyright 2013 Canonical Ltd.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; version 3.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.0
import "../../keys"

KeyPad {
    anchors.fill: parent

    content: c1
    symbols: "languages/Keyboard_symbols.qml"

    Column {
        id: c1
        anchors.fill: parent
        spacing: 0

        Row {
            anchors.horizontalCenter: parent.horizontalCenter;
            spacing: 0

            CharKey { label: "q"; shifted: "Q"; extended: ["1"]; extendedShifted: ["1"] }
            CharKey { label: "w"; shifted: "W"; extended: ["2"]; extendedShifted: ["2"] }
            CharKey { label: "e"; shifted: "E"; extended: ["3", "é","è","ë","ê","€"]; extendedShifted: ["3", "É","È","Ë","Ê","€"] }
            CharKey { label: "r"; shifted: "R"; extended: ["4"]; extendedShifted: ["4"] }
            CharKey { label: "t"; shifted: "T"; extended: ["5", "þ"]; extendedShifted: ["5", "Þ"] }
            CharKey { label: "y"; shifted: "Y"; extended: ["6", "¥"]; extendedShifted: ["6", "¥"] }
            CharKey { label: "u"; shifted: "U"; extended: ["7", "ü","ù","û","ú",]; extendedShifted: ["7", "Ü","Ù","Û","Ú"] }
            CharKey { label: "i"; shifted: "I"; extended: ["8", "î","ï","ì","í"]; extendedShifted: ["8", "Î","Ï","Ì","Í"] }
            CharKey { label: "o"; shifted: "O"; extended: ["9", "ø","ö","ô","ò","ó","õ"]; extendedShifted: ["9", "Ø","Ö","Ô","Ò","Ó","Õ"] }
            CharKey { label: "p"; shifted: "P"; extended: ["0"]; extendedShifted: ["0"] }
        }

        Row {
            anchors.horizontalCenter: parent.horizontalCenter;
            spacing: 0

            CharKey { label: "a"; shifted: "A"; extended: ["æ","å","ä","à","á","â","ã"]; extendedShifted: ["Æ","Å","Ä","À","Á","Â","Ã"] }
            CharKey { label: "s"; shifted: "S"; extended: ["ß","$"]; extendedShifted: ["$"] }
            CharKey { label: "d"; shifted: "D"; extended: ["ð"]; extendedShifted: ["Ð"] }
            CharKey { label: "f"; shifted: "F"; }
            CharKey { label: "g"; shifted: "G"; }
            CharKey { label: "h"; shifted: "H"; }
            CharKey { label: "j"; shifted: "J"; }
            CharKey { label: "k"; shifted: "K"; }
            CharKey { label: "l"; shifted: "L"; }
            CharKey { label: "å"; shifted: "Å"; }
        }

        Row {
            anchors.horizontalCenter: parent.horizontalCenter;
            spacing: 0

            ShiftKey { padding: 0 }
            CharKey { label: "z"; shifted: "Z"; }
            CharKey { label: "x"; shifted: "X"; }
            CharKey { label: "c"; shifted: "C"; extended: ["ç"]; extendedShifted: ["Ç"] }
            CharKey { label: "v"; shifted: "V"; }
            CharKey { label: "b"; shifted: "B"; }
            CharKey { label: "n"; shifted: "N"; extended: ["ñ"]; extendedShifted: ["Ñ"] }
            CharKey { label: "m"; shifted: "M"; }
            CharKey { label: "æ"; shifted: "Æ"; extended: ["ä"]; extendedShifted: ["Ä"] }
            BackspaceKey { padding: 0 }
        }

        Item {
            anchors.left: parent.left
            anchors.right: parent.right

            height: panel.keyHeight;
            SymbolShiftKey { id: symShiftKey;                            anchors.left: parent.left; }
            LanguageKey    { id: languageMenuButton;                     anchors.left: symShiftKey.right; }
            CharKey        { id: atKey;    label: "@"; shifted: "@";     anchors.left: languageMenuButton.right; }
            SpaceKey       { id: spaceKey;                               anchors.left: atKey.right; anchors.right: urlKey.left; noMagnifier: true }
            UrlKey         { id: urlKey; label: ".dk"; extended: [".fo", ".gl"]; anchors.right: dotKey.left; }
            CharKey        { id: dotKey;      label: "."; shifted: "."; extended: ["?", "!"]; extendedShifted: ["?", "!"]; anchors.right: umlaut.left; }
            CharKey        { id: umlaut;      label: "ø"; shifted: "Ø";  anchors.right: enterKey.left; }
            ReturnKey      { id: enterKey;                               anchors.right: parent.right }
        }
    } // column
}
