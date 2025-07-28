    /* "src/Common.sol":27251:27367  contract Sqrt {... */
  mstore(0x40, 0x80)
  callvalue
  dup1
  iszero
  tag_1
  jumpi
  revert(0x00, 0x00)
tag_1:
  pop
  dataSize(sub_0)
  dup1
  dataOffset(sub_0)
  0x00
  codecopy
  0x00
  return
stop

sub_0: assembly {
        /* "src/Common.sol":27251:27367  contract Sqrt {... */
      mstore(0x40, 0x80)
      callvalue
      dup1
      iszero
      tag_1
      jumpi
      revert(0x00, 0x00)
    tag_1:
      pop
      jumpi(tag_2, lt(calldatasize, 0x04))
      shr(0xe0, calldataload(0x00))
      dup1
      0xa444f5e9
      eq
      tag_3
      jumpi
    tag_2:
      revert(0x00, 0x00)
        /* "src/Common.sol":27271:27365  function run(uint256 x) external pure returns (uint256 result) {... */
    tag_3:
      tag_4
      tag_5
      calldatasize
      0x04
      tag_6
      jump	// in
    tag_5:
        /* "src/Common.sol":26026:26092  0x1B3647545F69737B838B9299A0A6ACB2B7BDC2C8CDD2D6DBE0E4E9EDF1F6FAFE */
      0x1b3647545f69737b838b9299a0a6acb2b7bdc2c8cdd2d6dbe0e4e9edf1f6fafe
        /* "src/Common.sol":25750:25784  0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF */
      0xffffffffffffffffffffffffffffffff
      dup3
      gt
        /* "src/Common.sol":25744:25745  7 */
      0x07
        /* "src/Common.sol":25740:25789  shl(7, lt(0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, x)) */
      shl
        /* "src/Common.sol":25839:25848  shr(n, x) */
      dup3
      dup2
      shr
        /* "src/Common.sol":25819:25837  0xFFFFFFFFFFFFFFFF */
      0xffffffffffffffff
        /* "src/Common.sol":25816:25849  lt(0xFFFFFFFFFFFFFFFF, shr(n, x)) */
      lt
        /* "src/Common.sol":25813:25814  6 */
      0x06
        /* "src/Common.sol":25809:25850  shl(6, lt(0xFFFFFFFFFFFFFFFF, shr(n, x))) */
      shl
        /* "src/Common.sol":25803:25851  or(n, shl(6, lt(0xFFFFFFFFFFFFFFFF, shr(n, x)))) */
      or
        /* "src/Common.sol":25893:25902  shr(n, x) */
      dup3
      dup2
      shr
        /* "src/Common.sol":25881:25891  0xFFFFFFFF */
      0xffffffff
        /* "src/Common.sol":25878:25903  lt(0xFFFFFFFF, shr(n, x)) */
      lt
        /* "src/Common.sol":25875:25876  5 */
      0x05
        /* "src/Common.sol":25871:25904  shl(5, lt(0xFFFFFFFF, shr(n, x))) */
      shl
        /* "src/Common.sol":25865:25905  or(n, shl(5, lt(0xFFFFFFFF, shr(n, x)))) */
      or
        /* "src/Common.sol":25943:25952  shr(n, x) */
      dup3
      dup2
      shr
        /* "src/Common.sol":25935:25941  0xFFFF */
      0xffff
        /* "src/Common.sol":25932:25953  lt(0xFFFF, shr(n, x)) */
      lt
        /* "src/Common.sol":25929:25930  4 */
      0x04
        /* "src/Common.sol":25925:25954  shl(4, lt(0xFFFF, shr(n, x))) */
      swap1
      dup2
      shl
        /* "src/Common.sol":25919:25955  or(n, shl(4, lt(0xFFFF, shr(n, x)))) */
      swap1
      swap2
      or
        /* "src/Common.sol":25991:26000  shr(n, x) */
      dup4
      dup2
      shr
        /* "src/Common.sol":25985:25989  0xFF */
      0xff
        /* "src/Common.sol":25982:26001  lt(0xFF, shr(n, x)) */
      lt
        /* "src/Common.sol":25979:25980  3 */
      0x03
        /* "src/Common.sol":25975:26002  shl(3, lt(0xFF, shr(n, x))) */
      swap1
      dup2
      shl
        /* "src/Common.sol":25969:26003  or(n, shl(3, lt(0xFF, shr(n, x)))) */
      swap1
      swap2
      or
        /* "src/Common.sol":26117:26126  shr(n, x) */
      dup5
      dup2
      shr
        /* "src/Common.sol":26110:26127  shr(3, shr(n, x)) */
      swap1
      swap2
      shr
        /* "src/Common.sol":26168:26182  byte(i, table) */
      swap3
      swap1
      swap3
      byte
        /* "src/Common.sol":26161:26162  1 */
      0x01
        /* "src/Common.sol":26157:26166  shr(1, n) */
      swap3
      dup4
      shr
        /* "src/Common.sol":26153:26183  shl(shr(1, n), byte(i, table)) */
      shl
        /* "src/Common.sol":26146:26184  shr(4, shl(shr(1, n), byte(i, table))) */
      swap1
      shr
        /* "src/Common.sol":26709:26723  div(x, result) */
      dup1
      dup4
      div
        /* "src/Common.sol":26697:26724  add(result, div(x, result)) */
      add
        /* "src/Common.sol":26690:26725  shr(1, add(result, div(x, result))) */
      dup2
      shr
        /* "src/Common.sol":26763:26777  div(x, result) */
      dup1
      dup4
      div
        /* "src/Common.sol":26751:26778  add(result, div(x, result)) */
      add
        /* "src/Common.sol":26744:26779  shr(1, add(result, div(x, result))) */
      dup2
      shr
        /* "src/Common.sol":26817:26831  div(x, result) */
      dup1
      dup4
      div
        /* "src/Common.sol":26805:26832  add(result, div(x, result)) */
      add
        /* "src/Common.sol":26798:26833  shr(1, add(result, div(x, result))) */
      dup2
      shr
        /* "src/Common.sol":26871:26885  div(x, result) */
      dup1
      dup4
      div
        /* "src/Common.sol":26859:26886  add(result, div(x, result)) */
      add
        /* "src/Common.sol":26852:26887  shr(1, add(result, div(x, result))) */
      dup2
      shr
        /* "src/Common.sol":26925:26939  div(x, result) */
      dup1
      dup4
      div
        /* "src/Common.sol":26913:26940  add(result, div(x, result)) */
      add
        /* "src/Common.sol":26906:26941  shr(1, add(result, div(x, result))) */
      dup2
      shr
        /* "src/Common.sol":26979:26993  div(x, result) */
      dup1
      dup4
      div
        /* "src/Common.sol":26967:26994  add(result, div(x, result)) */
      add
        /* "src/Common.sol":26960:26995  shr(1, add(result, div(x, result))) */
      swap1
      shr
        /* "src/Common.sol":27109:27123  div(x, result) */
      swap1
      dup2
      swap1
      div
        /* "src/Common.sol":27098:27124  gt(result, div(x, result)) */
      dup2
      gt
        /* "src/Common.sol":27086:27125  sub(result, gt(result, div(x, result))) */
      swap1
      sub
      swap1
        /* "src/Common.sol":27271:27365  function run(uint256 x) external pure returns (uint256 result) {... */
      jump
    tag_4:
      mload(0x40)
        /* "#utility.yul":345:370   */
      swap1
      dup2
      mstore
        /* "#utility.yul":333:335   */
      0x20
        /* "#utility.yul":318:336   */
      add
        /* "src/Common.sol":27271:27365  function run(uint256 x) external pure returns (uint256 result) {... */
      mload(0x40)
      dup1
      swap2
      sub
      swap1
      return
        /* "#utility.yul":14:194   */
    tag_6:
        /* "#utility.yul":73:79   */
      0x00
        /* "#utility.yul":126:128   */
      0x20
        /* "#utility.yul":114:123   */
      dup3
        /* "#utility.yul":105:112   */
      dup5
        /* "#utility.yul":101:124   */
      sub
        /* "#utility.yul":97:129   */
      slt
        /* "#utility.yul":94:146   */
      iszero
      tag_16
      jumpi
        /* "#utility.yul":142:143   */
      0x00
        /* "#utility.yul":139:140   */
      0x00
        /* "#utility.yul":132:144   */
      revert
        /* "#utility.yul":94:146   */
    tag_16:
      pop
        /* "#utility.yul":165:188   */
      calldataload
      swap2
        /* "#utility.yul":14:194   */
      swap1
      pop
      jump	// out

    auxdata: 0xa264697066735822122077c5d6f9417a64cdce1cb57e4def40225bd97123d147b73356fe783847d31a1264736f6c634300081e0033
}
