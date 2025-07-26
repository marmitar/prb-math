    /* "src/Common.sol":24481:24595  contract Msb {... */
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
        /* "src/Common.sol":24481:24595  contract Msb {... */
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
        /* "src/Common.sol":24500:24593  function run(uint256 x) external pure returns (uint256 result) {... */
    tag_3:
      tag_4
      tag_5
      calldatasize
      0x04
      tag_6
      jump	// in
    tag_5:
        /* "src/Common.sol":13316:13317  1 */
      0x01
        /* "src/Common.sol":12814:12848  0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF */
      0xffffffffffffffffffffffffffffffff
      dup3
      gt
        /* "src/Common.sol":12808:12809  7 */
      0x07
        /* "src/Common.sol":12804:12853  shl(7, lt(0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, x)) */
      shl
        /* "src/Common.sol":12929:12943  shr(result, x) */
      dup3
      dup2
      shr
        /* "src/Common.sol":12909:12927  0xFFFFFFFFFFFFFFFF */
      0xffffffffffffffff
        /* "src/Common.sol":12906:12944  lt(0xFFFFFFFFFFFFFFFF, shr(result, x)) */
      lt
        /* "src/Common.sol":12903:12904  6 */
      0x06
        /* "src/Common.sol":12899:12945  shl(6, lt(0xFFFFFFFFFFFFFFFF, shr(result, x))) */
      shl
        /* "src/Common.sol":12888:12946  or(result, shl(6, lt(0xFFFFFFFFFFFFFFFF, shr(result, x)))) */
      or
        /* "src/Common.sol":13014:13028  shr(result, x) */
      dup3
      dup2
      shr
        /* "src/Common.sol":13002:13012  0xFFFFFFFF */
      0xffffffff
        /* "src/Common.sol":12999:13029  lt(0xFFFFFFFF, shr(result, x)) */
      lt
        /* "src/Common.sol":12996:12997  5 */
      0x05
        /* "src/Common.sol":12992:13030  shl(5, lt(0xFFFFFFFF, shr(result, x))) */
      shl
        /* "src/Common.sol":12981:13031  or(result, shl(5, lt(0xFFFFFFFF, shr(result, x)))) */
      or
        /* "src/Common.sol":13095:13109  shr(result, x) */
      dup3
      dup2
      shr
        /* "src/Common.sol":13087:13093  0xFFFF */
      0xffff
        /* "src/Common.sol":13084:13110  lt(0xFFFF, shr(result, x)) */
      lt
        /* "src/Common.sol":13081:13082  4 */
      0x04
        /* "src/Common.sol":13077:13111  shl(4, lt(0xFFFF, shr(result, x))) */
      shl
        /* "src/Common.sol":13066:13112  or(result, shl(4, lt(0xFFFF, shr(result, x)))) */
      or
        /* "src/Common.sol":13173:13187  shr(result, x) */
      dup3
      dup2
      shr
        /* "src/Common.sol":13167:13171  0xFF */
      0xff
        /* "src/Common.sol":13164:13188  lt(0xFF, shr(result, x)) */
      lt
        /* "src/Common.sol":13161:13162  3 */
      0x03
        /* "src/Common.sol":13157:13189  shl(3, lt(0xFF, shr(result, x))) */
      swap1
      dup2
      shl
        /* "src/Common.sol":13146:13190  or(result, shl(3, lt(0xFF, shr(result, x)))) */
      swap1
      swap2
      or
        /* "src/Common.sol":13250:13264  shr(result, x) */
      dup4
      dup2
      shr
        /* "src/Common.sol":13245:13248  0xF */
      0x0f
        /* "src/Common.sol":13242:13265  lt(0xF, shr(result, x)) */
      lt
        /* "src/Common.sol":13239:13240  2 */
      0x02
        /* "src/Common.sol":13235:13266  shl(2, lt(0xF, shr(result, x))) */
      shl
        /* "src/Common.sol":13224:13267  or(result, shl(2, lt(0xF, shr(result, x)))) */
      or
        /* "src/Common.sol":13327:13341  shr(result, x) */
      dup4
      dup2
      shr
        /* "src/Common.sol":13319:13342  lt(0x3, shr(result, x)) */
      swap1
      swap2
      lt
        /* "src/Common.sol":13312:13343  shl(1, lt(0x3, shr(result, x))) */
      dup3
      shl
        /* "src/Common.sol":13301:13344  or(result, shl(1, lt(0x3, shr(result, x)))) */
      or
        /* "src/Common.sol":13397:13411  shr(result, x) */
      swap2
      dup3
      shr
      gt
        /* "src/Common.sol":13378:13413  or(result, lt(0x1, shr(result, x))) */
      or
      swap1
        /* "src/Common.sol":24500:24593  function run(uint256 x) external pure returns (uint256 result) {... */
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
        /* "src/Common.sol":24500:24593  function run(uint256 x) external pure returns (uint256 result) {... */
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

    auxdata: 0xa264697066735822122060f957b63f416ddd273f6cf69c2c8a3c1b9059d80d361027be9e5cc5f7aea87e64736f6c634300081e0033
}
