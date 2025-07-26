    /* "src/Common.sol":24590:24706  contract Sqrt {... */
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
        /* "src/Common.sol":24590:24706  contract Sqrt {... */
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
        /* "src/Common.sol":24610:24704  function run(uint256 x) external pure returns (uint256 result) {... */
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
        /* "src/Common.sol":24610:24704  function run(uint256 x) external pure returns (uint256 result) {... */
      mload(0x40)
      dup1
      swap2
      sub
      swap1
      return
    tag_7:
        /* "src/Common.sol":24657:24671  uint256 result */
      0x00
        /* "src/Common.sol":24690:24697  sqrt(x) */
      tag_11
        /* "src/Common.sol":24695:24696  x */
      dup3
        /* "src/Common.sol":24690:24694  sqrt */
      tag_12
        /* "src/Common.sol":24690:24697  sqrt(x) */
      jump	// in
    tag_11:
        /* "src/Common.sol":24683:24697  return sqrt(x) */
      swap3
        /* "src/Common.sol":24610:24704  function run(uint256 x) external pure returns (uint256 result) {... */
      swap2
      pop
      pop
      jump	// out
        /* "src/Common.sol":22487:24472  function sqrt(uint256 x) pure returns (uint256 result) {... */
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
        /* "src/Common.sol":22487:24472  function sqrt(uint256 x) pure returns (uint256 result) {... */
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
      swap1
      shl
      swap1
      dup2
      dup4
      dup2
        /* "src/Common.sol":23976:23986  x / result */
      tag_18
      jumpi
      tag_18
      tag_19
      jump	// in
    tag_18:
      div
        /* "src/Common.sol":23967:23973  result */
      dup3
        /* "src/Common.sol":23967:23986  result + x / result */
      add
        /* "src/Common.sol":23966:23992  (result + x / result) >> 1 */
      swap1
      shr
        /* "src/Common.sol":23957:23992  result = (result + x / result) >> 1 */
      swap1
      pop
        /* "src/Common.sol":24036:24037  1 */
      0x01
        /* "src/Common.sol":24025:24031  result */
      dup2
        /* "src/Common.sol":24021:24022  x */
      dup4
        /* "src/Common.sol":24021:24031  x / result */
      dup2
      tag_21
      jumpi
      tag_21
      tag_19
      jump	// in
    tag_21:
      div
        /* "src/Common.sol":24012:24018  result */
      dup3
        /* "src/Common.sol":24012:24031  result + x / result */
      add
        /* "src/Common.sol":24011:24037  (result + x / result) >> 1 */
      swap1
      shr
        /* "src/Common.sol":24002:24037  result = (result + x / result) >> 1 */
      swap1
      pop
        /* "src/Common.sol":24081:24082  1 */
      0x01
        /* "src/Common.sol":24070:24076  result */
      dup2
        /* "src/Common.sol":24066:24067  x */
      dup4
        /* "src/Common.sol":24066:24076  x / result */
      dup2
      tag_23
      jumpi
      tag_23
      tag_19
      jump	// in
    tag_23:
      div
        /* "src/Common.sol":24057:24063  result */
      dup3
        /* "src/Common.sol":24057:24076  result + x / result */
      add
        /* "src/Common.sol":24056:24082  (result + x / result) >> 1 */
      swap1
      shr
        /* "src/Common.sol":24047:24082  result = (result + x / result) >> 1 */
      swap1
      pop
        /* "src/Common.sol":24126:24127  1 */
      0x01
        /* "src/Common.sol":24115:24121  result */
      dup2
        /* "src/Common.sol":24111:24112  x */
      dup4
        /* "src/Common.sol":24111:24121  x / result */
      dup2
      tag_25
      jumpi
      tag_25
      tag_19
      jump	// in
    tag_25:
      div
        /* "src/Common.sol":24102:24108  result */
      dup3
        /* "src/Common.sol":24102:24121  result + x / result */
      add
        /* "src/Common.sol":24101:24127  (result + x / result) >> 1 */
      swap1
      shr
        /* "src/Common.sol":24092:24127  result = (result + x / result) >> 1 */
      swap1
      pop
        /* "src/Common.sol":24171:24172  1 */
      0x01
        /* "src/Common.sol":24160:24166  result */
      dup2
        /* "src/Common.sol":24156:24157  x */
      dup4
        /* "src/Common.sol":24156:24166  x / result */
      dup2
      tag_27
      jumpi
      tag_27
      tag_19
      jump	// in
    tag_27:
      div
        /* "src/Common.sol":24147:24153  result */
      dup3
        /* "src/Common.sol":24147:24166  result + x / result */
      add
        /* "src/Common.sol":24146:24172  (result + x / result) >> 1 */
      swap1
      shr
        /* "src/Common.sol":24137:24172  result = (result + x / result) >> 1 */
      swap1
      pop
        /* "src/Common.sol":24216:24217  1 */
      0x01
        /* "src/Common.sol":24205:24211  result */
      dup2
        /* "src/Common.sol":24201:24202  x */
      dup4
        /* "src/Common.sol":24201:24211  x / result */
      dup2
      tag_29
      jumpi
      tag_29
      tag_19
      jump	// in
    tag_29:
      div
        /* "src/Common.sol":24192:24198  result */
      dup3
        /* "src/Common.sol":24192:24211  result + x / result */
      add
        /* "src/Common.sol":24191:24217  (result + x / result) >> 1 */
      swap1
      shr
        /* "src/Common.sol":24182:24217  result = (result + x / result) >> 1 */
      swap1
      pop
        /* "src/Common.sol":24261:24262  1 */
      0x01
        /* "src/Common.sol":24250:24256  result */
      dup2
        /* "src/Common.sol":24246:24247  x */
      dup4
        /* "src/Common.sol":24246:24256  x / result */
      dup2
      tag_31
      jumpi
      tag_31
      tag_19
      jump	// in
    tag_31:
      div
        /* "src/Common.sol":24237:24243  result */
      dup3
        /* "src/Common.sol":24237:24256  result + x / result */
      add
        /* "src/Common.sol":24236:24262  (result + x / result) >> 1 */
      swap1
      shr
        /* "src/Common.sol":24227:24262  result = (result + x / result) >> 1 */
      swap1
      pop
        /* "src/Common.sol":24344:24365  uint256 roundedResult */
      0x00
        /* "src/Common.sol":24372:24378  result */
      dup2
        /* "src/Common.sol":24368:24369  x */
      dup4
        /* "src/Common.sol":24368:24378  x / result */
      dup2
      tag_33
      jumpi
      tag_33
      tag_19
      jump	// in
    tag_33:
      div
        /* "src/Common.sol":24344:24378  uint256 roundedResult = x / result */
      swap1
      pop
        /* "src/Common.sol":24402:24415  roundedResult */
      dup1
        /* "src/Common.sol":24392:24398  result */
      dup3
        /* "src/Common.sol":24392:24415  result >= roundedResult */
      lt
        /* "src/Common.sol":24388:24464  if (result >= roundedResult) {... */
      tag_34
      jumpi
        /* "src/Common.sol":24440:24453  roundedResult */
      dup1
        /* "src/Common.sol":24431:24453  result = roundedResult */
      swap2
      pop
        /* "src/Common.sol":24388:24464  if (result >= roundedResult) {... */
    tag_34:
        /* "src/Common.sol":23937:24470  unchecked {... */
      pop
        /* "src/Common.sol":22487:24472  function sqrt(uint256 x) pure returns (uint256 result) {... */
      swap2
      swap1
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
      tag_38
      jumpi
        /* "#utility.yul":142:143   */
      0x00
        /* "#utility.yul":139:140   */
      0x00
        /* "#utility.yul":132:144   */
      revert
        /* "#utility.yul":94:146   */
    tag_38:
      pop
        /* "#utility.yul":165:188   */
      calldataload
      swap2
        /* "#utility.yul":14:194   */
      swap1
      pop
      jump	// out
        /* "#utility.yul":381:565   */
    tag_19:
        /* "#utility.yul":433:510   */
      0x4e487b7100000000000000000000000000000000000000000000000000000000
        /* "#utility.yul":430:431   */
      0x00
        /* "#utility.yul":423:511   */
      mstore
        /* "#utility.yul":530:534   */
      0x12
        /* "#utility.yul":527:528   */
      0x04
        /* "#utility.yul":520:535   */
      mstore
        /* "#utility.yul":554:558   */
      0x24
        /* "#utility.yul":551:552   */
      0x00
        /* "#utility.yul":544:559   */
      revert

    auxdata: 0xa264697066735822122092920af38d9b2684bde08d97a9ebb777675e77e4713b1cd966c85818fe80ad1964736f6c634300081e0033
}
