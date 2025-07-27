    /* "src/Common.sol":26145:26259  contract Msb {... */
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
        /* "src/Common.sol":26145:26259  contract Msb {... */
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
        /* "src/Common.sol":26164:26257  function run(uint256 x) external pure returns (uint256 result) {... */
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
        /* "src/Common.sol":26164:26257  function run(uint256 x) external pure returns (uint256 result) {... */
      mload(0x40)
      dup1
      swap2
      sub
      swap1
      return
    tag_7:
        /* "src/Common.sol":26211:26225  uint256 result */
      0x00
        /* "src/Common.sol":26244:26250  msb(x) */
      tag_11
        /* "src/Common.sol":26248:26249  x */
      dup3
        /* "src/Common.sol":15170:15236  0x0000010102020202030303030303030300000000000000000000000000000000 */
      0x010102020202030303030303030300000000000000000000000000000000
        /* "src/Common.sol":12997:13031  0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF */
      0xffffffffffffffffffffffffffffffff
        /* "src/Common.sol":12994:13035  lt(0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, x) */
      dup3
      gt
        /* "src/Common.sol":12991:12992  7 */
      0x07
        /* "src/Common.sol":12987:13036  shl(7, lt(0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, x)) */
      shl
        /* "src/Common.sol":13162:13176  shr(result, x) */
      dup3
      dup2
      shr
        /* "src/Common.sol":13142:13160  0xFFFFFFFFFFFFFFFF */
      0xffffffffffffffff
        /* "src/Common.sol":13139:13177  lt(0xFFFFFFFFFFFFFFFF, shr(result, x)) */
      lt
        /* "src/Common.sol":13136:13137  6 */
      0x06
        /* "src/Common.sol":13132:13178  shl(6, lt(0xFFFFFFFFFFFFFFFF, shr(result, x))) */
      shl
        /* "src/Common.sol":13121:13179  or(result, shl(6, lt(0xFFFFFFFFFFFFFFFF, shr(result, x)))) */
      or
        /* "src/Common.sol":13296:13310  shr(result, x) */
      dup3
      dup2
      shr
        /* "src/Common.sol":13284:13294  0xFFFFFFFF */
      0xffffffff
        /* "src/Common.sol":13281:13311  lt(0xFFFFFFFF, shr(result, x)) */
      lt
        /* "src/Common.sol":13278:13279  5 */
      0x05
        /* "src/Common.sol":13274:13312  shl(5, lt(0xFFFFFFFF, shr(result, x))) */
      shl
        /* "src/Common.sol":13263:13313  or(result, shl(5, lt(0xFFFFFFFF, shr(result, x)))) */
      or
        /* "src/Common.sol":13426:13440  shr(result, x) */
      dup3
      dup2
      shr
        /* "src/Common.sol":13418:13424  0xFFFF */
      0xffff
        /* "src/Common.sol":13415:13441  lt(0xFFFF, shr(result, x)) */
      lt
        /* "src/Common.sol":13412:13413  4 */
      0x04
        /* "src/Common.sol":13408:13442  shl(4, lt(0xFFFF, shr(result, x))) */
      shl
        /* "src/Common.sol":13397:13443  or(result, shl(4, lt(0xFFFF, shr(result, x)))) */
      or
        /* "src/Common.sol":13552:13566  shr(result, x) */
      dup3
      dup2
      shr
        /* "src/Common.sol":13546:13550  0xFF */
      0xff
        /* "src/Common.sol":13543:13567  lt(0xFF, shr(result, x)) */
      lt
        /* "src/Common.sol":13540:13541  3 */
      0x03
        /* "src/Common.sol":13536:13568  shl(3, lt(0xFF, shr(result, x))) */
      shl
        /* "src/Common.sol":13525:13569  or(result, shl(3, lt(0xFF, shr(result, x)))) */
      or
        /* "src/Common.sol":13676:13690  shr(result, x) */
      dup3
      dup2
      shr
        /* "src/Common.sol":13671:13674  0xF */
      0x0f
        /* "src/Common.sol":13668:13691  lt(0xF, shr(result, x)) */
      lt
        /* "src/Common.sol":13665:13666  2 */
      0x02
        /* "src/Common.sol":13661:13692  shl(2, lt(0xF, shr(result, x))) */
      shl
        /* "src/Common.sol":13650:13693  or(result, shl(2, lt(0xF, shr(result, x)))) */
      or
        /* "src/Common.sol":15154:15168  shr(result, x) */
      swap2
      dup3
      shr
        /* "src/Common.sol":15149:15237  byte(shr(result, x), 0x0000010102020202030303030303030300000000000000000000000000000000) */
      byte
        /* "src/Common.sol":15138:15238  or(result, byte(shr(result, x), 0x0000010102020202030303030303030300000000000000000000000000000000)) */
      or
      swap1
        /* "src/Common.sol":12682:15246  function msb(uint256 x) pure returns (uint256 result) {... */
      jump
        /* "src/Common.sol":26244:26250  msb(x) */
    tag_11:
        /* "src/Common.sol":26237:26250  return msb(x) */
      swap3
        /* "src/Common.sol":26164:26257  function run(uint256 x) external pure returns (uint256 result) {... */
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

    auxdata: 0xa26469706673582212207c2f1c0d77c104a27cd83e47c0e2bb8e5e0e94129aae81d7e49c5742f0922f9664736f6c634300081e0033
}
