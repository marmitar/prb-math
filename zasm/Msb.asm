    /* "src/Common.sol":25086:25200  contract Msb {... */
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
        /* "src/Common.sol":25086:25200  contract Msb {... */
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
        /* "src/Common.sol":25105:25198  function run(uint256 x) external pure returns (uint256 result) {... */
    tag_3:
      tag_4
      tag_5
      calldatasize
      0x04
      tag_6
      jump	// in
    tag_5:
      tag_7
      jump	// in
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
        /* "src/Common.sol":25105:25198  function run(uint256 x) external pure returns (uint256 result) {... */
      mload(0x40)
      dup1
      swap2
      sub
      swap1
      return
    tag_7:
        /* "src/Common.sol":25152:25166  uint256 result */
      0x00
        /* "src/Common.sol":25185:25191  msb(x) */
      tag_11
        /* "src/Common.sol":25189:25190  x */
      dup3
        /* "src/Common.sol":13792:13793  1 */
      0x01
        /* "src/Common.sol":12817:12851  0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF */
      0xffffffffffffffffffffffffffffffff
        /* "src/Common.sol":12811:12852  gt(x, 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF) */
      dup3
      gt
        /* "src/Common.sol":12808:12809  7 */
      0x07
        /* "src/Common.sol":12804:12853  shl(7, gt(x, 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) */
      shl
        /* "src/Common.sol":12867:12881  shr(factor, x) */
      swap2
      dup3
      shr
        /* "src/Common.sol":13003:13021  0xFFFFFFFFFFFFFFFF */
      0xffffffffffffffff
        /* "src/Common.sol":12997:13022  gt(x, 0xFFFFFFFFFFFFFFFF) */
      dup2
      gt
        /* "src/Common.sol":12994:12995  6 */
      0x06
        /* "src/Common.sol":12990:13023  shl(6, gt(x, 0xFFFFFFFFFFFFFFFF)) */
      shl
        /* "src/Common.sol":13037:13051  shr(factor, x) */
      swap1
      dup2
      shr
        /* "src/Common.sol":13173:13183  0xFFFFFFFF */
      0xffffffff
        /* "src/Common.sol":13167:13184  gt(x, 0xFFFFFFFF) */
      dup2
      gt
        /* "src/Common.sol":13164:13165  5 */
      0x05
        /* "src/Common.sol":13160:13185  shl(5, gt(x, 0xFFFFFFFF)) */
      shl
        /* "src/Common.sol":13199:13213  shr(factor, x) */
      swap1
      dup2
      shr
        /* "src/Common.sol":13335:13341  0xFFFF */
      0xffff
        /* "src/Common.sol":13329:13342  gt(x, 0xFFFF) */
      dup2
      gt
        /* "src/Common.sol":13326:13327  4 */
      0x04
        /* "src/Common.sol":13322:13343  shl(4, gt(x, 0xFFFF)) */
      shl
        /* "src/Common.sol":13357:13371  shr(factor, x) */
      swap1
      dup2
      shr
        /* "src/Common.sol":13492:13496  0xFF */
      0xff
        /* "src/Common.sol":13486:13497  gt(x, 0xFF) */
      dup2
      gt
        /* "src/Common.sol":13483:13484  3 */
      0x03
        /* "src/Common.sol":13479:13498  shl(3, gt(x, 0xFF)) */
      swap1
      dup2
      shl
        /* "src/Common.sol":13512:13526  shr(factor, x) */
      swap2
      dup3
      shr
        /* "src/Common.sol":13647:13650  0xF */
      0x0f
        /* "src/Common.sol":13641:13651  gt(x, 0xF) */
      dup2
      gt
        /* "src/Common.sol":13638:13639  2 */
      0x02
        /* "src/Common.sol":13634:13652  shl(2, gt(x, 0xF)) */
      shl
        /* "src/Common.sol":13666:13680  shr(factor, x) */
      swap1
      dup2
      shr
        /* "src/Common.sol":13795:13805  gt(x, 0x3) */
      swap2
      dup3
      gt
        /* "src/Common.sol":13788:13806  shl(1, gt(x, 0x3)) */
      dup8
      shl
        /* "src/Common.sol":13820:13834  shr(factor, x) */
      swap2
      dup3
      shr
        /* "src/Common.sol":13978:13988  gt(x, 0x1) */
      swap7
      swap1
      swap7
      gt
        /* "src/Common.sol":13070:13088  or(result, factor) */
      swap5
      swap1
      swap7
      or
        /* "src/Common.sol":13232:13250  or(result, factor) */
      swap3
      swap1
      swap3
      or
        /* "src/Common.sol":13390:13408  or(result, factor) */
      or
        /* "src/Common.sol":13545:13563  or(result, factor) */
      or
        /* "src/Common.sol":13699:13717  or(result, factor) */
      swap2
      swap1
      swap2
      or
        /* "src/Common.sol":13853:13871  or(result, factor) */
      swap2
      swap1
      swap2
      or
        /* "src/Common.sol":14007:14025  or(result, factor) */
      or
      swap1
        /* "src/Common.sol":12682:14033  function msb(uint256 x) pure returns (uint256 result) {... */
      jump
        /* "src/Common.sol":25185:25191  msb(x) */
    tag_11:
        /* "src/Common.sol":25178:25191  return msb(x) */
      swap3
        /* "src/Common.sol":25105:25198  function run(uint256 x) external pure returns (uint256 result) {... */
      swap2
      pop
      pop
      jump	// out
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

    auxdata: 0xa2646970667358221220b132088ea0306a16cd733c680fe71443f3e404fc776ffdcfc6e0d72e13fde9a364736f6c634300081e0033
}
