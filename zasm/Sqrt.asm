    /* "src/Common.sol":24597:24713  contract Sqrt {... */
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
        /* "src/Common.sol":24597:24713  contract Sqrt {... */
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
        /* "src/Common.sol":24617:24711  function run(uint256 x) external pure returns (uint256 result) {... */
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
        /* "src/Common.sol":24617:24711  function run(uint256 x) external pure returns (uint256 result) {... */
      mload(0x40)
      dup1
      swap2
      sub
      swap1
      return
    tag_7:
        /* "src/Common.sol":24664:24678  uint256 result */
      0x00
        /* "src/Common.sol":24697:24704  sqrt(x) */
      tag_11
        /* "src/Common.sol":24702:24703  x */
      dup3
        /* "src/Common.sol":24697:24701  sqrt */
      tag_12
        /* "src/Common.sol":24697:24704  sqrt(x) */
      jump	// in
    tag_11:
        /* "src/Common.sol":24690:24704  return sqrt(x) */
      swap3
        /* "src/Common.sol":24617:24711  function run(uint256 x) external pure returns (uint256 result) {... */
      swap2
      pop
      pop
      jump	// out
        /* "src/Common.sol":22487:24479  function sqrt(uint256 x) pure returns (uint256 result) {... */
    tag_12:
        /* "src/Common.sol":22526:22540  uint256 result */
      0x00
        /* "src/Common.sol":22552:22553  x */
      dup2
        /* "src/Common.sol":22557:22558  0 */
      0x00
        /* "src/Common.sol":22552:22558  x == 0 */
      sub
        /* "src/Common.sol":22548:22585  if (x == 0) {... */
      tag_14
      jumpi
      pop
        /* "src/Common.sol":22577:22578  0 */
      0x00
      swap2
        /* "src/Common.sol":22487:24479  function sqrt(uint256 x) pure returns (uint256 result) {... */
      swap1
      pop
      jump	// out
        /* "src/Common.sol":22548:22585  if (x == 0) {... */
    tag_14:
      pop
        /* "src/Common.sol":23530:23531  1 */
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
      dup3
      dup2
      shr
      dup3
      lt
        /* "src/Common.sol":13378:13413  or(result, lt(0x1, shr(result, x))) */
      or
        /* "src/Common.sol":23520:23531  msb(x) >> 1 */
      dup2
      shr
        /* "src/Common.sol":23514:23532  1 << (msb(x) >> 1) */
      dup2
      dup2
      shl
        /* "src/Common.sol":24001:24015  div(x, result) */
      swap1
      dup4
      swap1
      shr
        /* "src/Common.sol":23989:24016  add(result, div(x, result)) */
      add
        /* "src/Common.sol":23982:24017  shr(1, add(result, div(x, result))) */
      dup2
      shr
        /* "src/Common.sol":24055:24069  div(x, result) */
      dup1
      dup4
      div
        /* "src/Common.sol":24043:24070  add(result, div(x, result)) */
      add
        /* "src/Common.sol":24036:24071  shr(1, add(result, div(x, result))) */
      dup2
      shr
        /* "src/Common.sol":24109:24123  div(x, result) */
      dup1
      dup4
      div
        /* "src/Common.sol":24097:24124  add(result, div(x, result)) */
      add
        /* "src/Common.sol":24090:24125  shr(1, add(result, div(x, result))) */
      dup2
      shr
        /* "src/Common.sol":24163:24177  div(x, result) */
      dup1
      dup4
      div
        /* "src/Common.sol":24151:24178  add(result, div(x, result)) */
      add
        /* "src/Common.sol":24144:24179  shr(1, add(result, div(x, result))) */
      dup2
      shr
        /* "src/Common.sol":24217:24231  div(x, result) */
      dup1
      dup4
      div
        /* "src/Common.sol":24205:24232  add(result, div(x, result)) */
      add
        /* "src/Common.sol":24198:24233  shr(1, add(result, div(x, result))) */
      dup2
      shr
        /* "src/Common.sol":24271:24285  div(x, result) */
      dup1
      dup4
      div
        /* "src/Common.sol":24259:24286  add(result, div(x, result)) */
      add
        /* "src/Common.sol":24252:24287  shr(1, add(result, div(x, result))) */
      dup2
      shr
        /* "src/Common.sol":24325:24339  div(x, result) */
      dup1
      dup4
      div
        /* "src/Common.sol":24313:24340  add(result, div(x, result)) */
      add
        /* "src/Common.sol":24306:24341  shr(1, add(result, div(x, result))) */
      swap1
      shr
        /* "src/Common.sol":24455:24469  div(x, result) */
      swap1
      dup2
      swap1
      div
        /* "src/Common.sol":24444:24470  gt(result, div(x, result)) */
      dup2
      gt
        /* "src/Common.sol":24432:24471  sub(result, gt(result, div(x, result))) */
      swap1
      sub
      swap1
        /* "src/Common.sol":22487:24479  function sqrt(uint256 x) pure returns (uint256 result) {... */
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
      tag_20
      jumpi
        /* "#utility.yul":142:143   */
      0x00
        /* "#utility.yul":139:140   */
      0x00
        /* "#utility.yul":132:144   */
      revert
        /* "#utility.yul":94:146   */
    tag_20:
      pop
        /* "#utility.yul":165:188   */
      calldataload
      swap2
        /* "#utility.yul":14:194   */
      swap1
      pop
      jump	// out

    auxdata: 0xa2646970667358221220f3e4f9f8e98710e72c84ac057e1c2330d8d91a42e8bc144cfa2af51d52228f6564736f6c634300081e0033
}
