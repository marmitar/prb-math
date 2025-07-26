// SPDX-License-Identifier: MIT
pragma solidity >=0.8.19;

// struct MarkdownTable {
//     Markdown.Column[] columns;
// }

// using Markdown for MarkdownTable global;

// library Markdown {
//     enum Alignment {
//         None,
//         Left,
//         Center,
//         Right
//     }

//     struct Column {
//         string header;
//         Alignment align;
//         string[] rows;
//     }

//     bytes1 private constant HEADER_SEP = "-";
//     bytes1 private constant COLUMN_SEP = "|";
//     bytes1 private constant ALIGN_MARK = ":";
//     bytes1 private constant SPACE = " ";

//     function toString(MarkdownTable memory table) external pure returns (string memory formatted) {
//         uint256 n = linesOf(table);
//         if (n <= 0) {
//             return "";
//         }

//         // uint256[2].concat();
//         string memory colSep = string(bytes.concat(COLUMN_SEP));
//         string memory space = string(bytes.concat(SPACE));

//         string[] memory lines = new string[](n);
//         for (uint256 i = 0; i < n; i++) {
//             lines[i] = colSep;
//         }
//         for (uint256 j = 0; j < table.columns.length; j++) {
//             string[] memory rows = aligned(table.columns[j], n);
//             for (uint256 i = 0; i < n; i++) {
//                 lines[i] = string.concat(lines[i], space, rows[i], space, colSep);
//             }
//         }

//         formatted = "";
//         for (uint256 i = 0; i < n; i++) {
//             formatted = string.concat(formatted, lines[i], "\n");
//         }
//     }

//     function linesOf(MarkdownTable memory table) private pure returns (uint256 lines) {
//         lines = 0;
//         for (uint256 j = 0; j < table.columns.length; j++) {
//             uint256 linesCurrent = linesOf(table.columns[j]);
//             if (linesCurrent > lines) {
//                 lines = linesCurrent;
//             }
//         }
//     }

//     function linesOf(Column memory col) private pure returns (uint256 lines) {
//         uint256 header = 1;
//         uint256 sep = 1;
//         return header + sep + col.rows.length;
//     }

//     function widthOf(Column memory col) private pure returns (uint256 width) {
//         width = 3;
//         for (uint256 i = 0; i < col.rows.length; i++) {
//             uint256 rowLen = lengthOf(col.rows[i]);
//             if (rowLen > width) {
//                 width = rowLen;
//             }
//         }
//         uint256 headerLen = lengthOf(col.header);
//         if (headerLen > width) {
//             width = headerLen;
//         }
//     }

//     function lengthOf(string memory str) private pure returns (uint256 length) {
//         return bytes(str).length;
//     }

//     function aligned(Column memory col, uint256 lines) private pure returns (string[] memory rows) {
//         uint256 width = widthOf(col);

//         rows = new string[](lines);
//         rows[0] = aligned(col.header, col.align, width);
//         rows[1] = headerSep(col.align, width);
//         for (uint256 i = 0; i < col.rows.length; i++) {
//             rows[i + 2] = aligned(col.rows[i], col.align, width);
//         }
//     }

//     function aligned(string memory text, Alignment align, uint256 width) private pure returns (string memory alignedText) {
//         (uint256 left, uint256 right) = fillerSizes(width - lengthOf(text), align);
//         return string.concat(filler(left, SPACE), text, filler(right, SPACE));
//     }

//     function fillerSizes(uint256 maxLenth, Alignment align) private pure returns (uint256 left, uint256 right) {
//         if (align == Alignment.Center) {
//             uint256 mid = maxLenth / 2;
//             return (mid, maxLenth - mid);
//         } else if (align == Alignment.Right) {
//             return (0, maxLenth);
//         } else {
//             // Center, None
//             return (maxLenth, 0);
//         }
//     }

//     function filler(uint256 length, bytes1 ch) private pure returns (string memory spaces) {
//         bytes memory str = new bytes(length);
//         for (uint256 i = 0; i < length; i++) {
//             str[i] = ch;
//         }
//         return string(str);
//     }

//     function headerSep(Alignment align, uint256 width) private pure returns (string memory sep) {
//         bytes memory str = bytes(filler(width, HEADER_SEP));
//         if (align == Alignment.Left || align == Alignment.Center) {
//             str[0] = ALIGN_MARK;
//         }
//         if (align == Alignment.Right || align == Alignment.Center) {
//             str[str.length - 1] = ALIGN_MARK;
//         }
//         return string(str);
//     }
// }
