    /* "src/Common.sol":25202:25318  contract Sqrt {... */
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
        /* "src/Common.sol":25202:25318  contract Sqrt {... */
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
        /* "src/Common.sol":25222:25316  function run(uint256 x) external pure returns (uint256 result) {... */
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
        /* "src/Common.sol":25222:25316  function run(uint256 x) external pure returns (uint256 result) {... */
      mload(0x40)
      dup1
      swap2
      sub
      swap1
      return
    tag_7:
        /* "src/Common.sol":25269:25283  uint256 result */
      0x00
        /* "src/Common.sol":25302:25309  sqrt(x) */
      tag_11
        /* "src/Common.sol":25307:25308  x */
      dup3
        /* "src/Common.sol":25302:25306  sqrt */
      tag_12
        /* "src/Common.sol":25302:25309  sqrt(x) */
      jump	// in
    tag_11:
        /* "src/Common.sol":25295:25309  return sqrt(x) */
      swap3
        /* "src/Common.sol":25222:25316  function run(uint256 x) external pure returns (uint256 result) {... */
      swap2
      pop
      pop
      jump	// out
        /* "src/Common.sol":23099:25084  function sqrt(uint256 x) pure returns (uint256 result) {... */
    tag_12:
        /* "src/Common.sol":23138:23152  uint256 result */
      0x00
        /* "src/Common.sol":23164:23165  x */
      dup2
        /* "src/Common.sol":23169:23170  0 */
      0x00
        /* "src/Common.sol":23164:23170  x == 0 */
      sub
        /* "src/Common.sol":23160:23197  if (x == 0) {... */
      tag_14
      jumpi
      pop
        /* "src/Common.sol":23189:23190  0 */
      0x00
      swap2
        /* "src/Common.sol":23099:25084  function sqrt(uint256 x) pure returns (uint256 result) {... */
      swap1
      pop
      jump	// out
        /* "src/Common.sol":23160:23197  if (x == 0) {... */
    tag_14:
        /* "src/Common.sol":24142:24143  1 */
      0x01
        /* "src/Common.sol":24132:24138  msb(x) */
      tag_15
        /* "src/Common.sol":24136:24137  x */
      dup4
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
        /* "src/Common.sol":24132:24138  msb(x) */
    tag_15:
        /* "src/Common.sol":24132:24143  msb(x) >> 1 */
      swap1
      shr
        /* "src/Common.sol":24126:24127  1 */
      0x01
        /* "src/Common.sol":24126:24144  1 << (msb(x) >> 1) */
      swap1
      shl
        /* "src/Common.sol":24117:24144  result = 1 << (msb(x) >> 1) */
      swap1
      pop
        /* "src/Common.sol":24603:24604  1 */
      0x01
        /* "src/Common.sol":24592:24598  result */
      dup2
        /* "src/Common.sol":24588:24589  x */
      dup4
        /* "src/Common.sol":24588:24598  x / result */
      dup2
      tag_18
      jumpi
      tag_18
      tag_19
      jump	// in
    tag_18:
      div
        /* "src/Common.sol":24579:24585  result */
      dup3
        /* "src/Common.sol":24579:24598  result + x / result */
      add
        /* "src/Common.sol":24578:24604  (result + x / result) >> 1 */
      swap1
      shr
        /* "src/Common.sol":24569:24604  result = (result + x / result) >> 1 */
      swap1
      pop
        /* "src/Common.sol":24648:24649  1 */
      0x01
        /* "src/Common.sol":24637:24643  result */
      dup2
        /* "src/Common.sol":24633:24634  x */
      dup4
        /* "src/Common.sol":24633:24643  x / result */
      dup2
      tag_21
      jumpi
      tag_21
      tag_19
      jump	// in
    tag_21:
      div
        /* "src/Common.sol":24624:24630  result */
      dup3
        /* "src/Common.sol":24624:24643  result + x / result */
      add
        /* "src/Common.sol":24623:24649  (result + x / result) >> 1 */
      swap1
      shr
        /* "src/Common.sol":24614:24649  result = (result + x / result) >> 1 */
      swap1
      pop
        /* "src/Common.sol":24693:24694  1 */
      0x01
        /* "src/Common.sol":24682:24688  result */
      dup2
        /* "src/Common.sol":24678:24679  x */
      dup4
        /* "src/Common.sol":24678:24688  x / result */
      dup2
      tag_23
      jumpi
      tag_23
      tag_19
      jump	// in
    tag_23:
      div
        /* "src/Common.sol":24669:24675  result */
      dup3
        /* "src/Common.sol":24669:24688  result + x / result */
      add
        /* "src/Common.sol":24668:24694  (result + x / result) >> 1 */
      swap1
      shr
        /* "src/Common.sol":24659:24694  result = (result + x / result) >> 1 */
      swap1
      pop
        /* "src/Common.sol":24738:24739  1 */
      0x01
        /* "src/Common.sol":24727:24733  result */
      dup2
        /* "src/Common.sol":24723:24724  x */
      dup4
        /* "src/Common.sol":24723:24733  x / result */
      dup2
      tag_25
      jumpi
      tag_25
      tag_19
      jump	// in
    tag_25:
      div
        /* "src/Common.sol":24714:24720  result */
      dup3
        /* "src/Common.sol":24714:24733  result + x / result */
      add
        /* "src/Common.sol":24713:24739  (result + x / result) >> 1 */
      swap1
      shr
        /* "src/Common.sol":24704:24739  result = (result + x / result) >> 1 */
      swap1
      pop
        /* "src/Common.sol":24783:24784  1 */
      0x01
        /* "src/Common.sol":24772:24778  result */
      dup2
        /* "src/Common.sol":24768:24769  x */
      dup4
        /* "src/Common.sol":24768:24778  x / result */
      dup2
      tag_27
      jumpi
      tag_27
      tag_19
      jump	// in
    tag_27:
      div
        /* "src/Common.sol":24759:24765  result */
      dup3
        /* "src/Common.sol":24759:24778  result + x / result */
      add
        /* "src/Common.sol":24758:24784  (result + x / result) >> 1 */
      swap1
      shr
        /* "src/Common.sol":24749:24784  result = (result + x / result) >> 1 */
      swap1
      pop
        /* "src/Common.sol":24828:24829  1 */
      0x01
        /* "src/Common.sol":24817:24823  result */
      dup2
        /* "src/Common.sol":24813:24814  x */
      dup4
        /* "src/Common.sol":24813:24823  x / result */
      dup2
      tag_29
      jumpi
      tag_29
      tag_19
      jump	// in
    tag_29:
      div
        /* "src/Common.sol":24804:24810  result */
      dup3
        /* "src/Common.sol":24804:24823  result + x / result */
      add
        /* "src/Common.sol":24803:24829  (result + x / result) >> 1 */
      swap1
      shr
        /* "src/Common.sol":24794:24829  result = (result + x / result) >> 1 */
      swap1
      pop
        /* "src/Common.sol":24873:24874  1 */
      0x01
        /* "src/Common.sol":24862:24868  result */
      dup2
        /* "src/Common.sol":24858:24859  x */
      dup4
        /* "src/Common.sol":24858:24868  x / result */
      dup2
      tag_31
      jumpi
      tag_31
      tag_19
      jump	// in
    tag_31:
      div
        /* "src/Common.sol":24849:24855  result */
      dup3
        /* "src/Common.sol":24849:24868  result + x / result */
      add
        /* "src/Common.sol":24848:24874  (result + x / result) >> 1 */
      swap1
      shr
        /* "src/Common.sol":24839:24874  result = (result + x / result) >> 1 */
      swap1
      pop
        /* "src/Common.sol":24956:24977  uint256 roundedResult */
      0x00
        /* "src/Common.sol":24984:24990  result */
      dup2
        /* "src/Common.sol":24980:24981  x */
      dup4
        /* "src/Common.sol":24980:24990  x / result */
      dup2
      tag_33
      jumpi
      tag_33
      tag_19
      jump	// in
    tag_33:
      div
        /* "src/Common.sol":24956:24990  uint256 roundedResult = x / result */
      swap1
      pop
        /* "src/Common.sol":25014:25027  roundedResult */
      dup1
        /* "src/Common.sol":25004:25010  result */
      dup3
        /* "src/Common.sol":25004:25027  result >= roundedResult */
      lt
        /* "src/Common.sol":25000:25076  if (result >= roundedResult) {... */
      tag_34
      jumpi
        /* "src/Common.sol":25052:25065  roundedResult */
      dup1
        /* "src/Common.sol":25043:25065  result = roundedResult */
      swap2
      pop
        /* "src/Common.sol":25000:25076  if (result >= roundedResult) {... */
    tag_34:
        /* "src/Common.sol":24549:25082  unchecked {... */
      pop
        /* "src/Common.sol":23099:25084  function sqrt(uint256 x) pure returns (uint256 result) {... */
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

    auxdata: 0xa26469706673582212205d7210c0325d98fdadbfd4ce4aac327c94b21db8f87a16e464deeb656b99d2a964736f6c634300081e0033
}
