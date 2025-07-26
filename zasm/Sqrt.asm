    /* "src/Common.sol":25529:25645  contract Sqrt {... */
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
        /* "src/Common.sol":25529:25645  contract Sqrt {... */
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
        /* "src/Common.sol":25549:25643  function run(uint256 x) external pure returns (uint256 result) {... */
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
        /* "src/Common.sol":25549:25643  function run(uint256 x) external pure returns (uint256 result) {... */
      mload(0x40)
      dup1
      swap2
      sub
      swap1
      return
    tag_7:
        /* "src/Common.sol":25596:25610  uint256 result */
      0x00
        /* "src/Common.sol":25629:25636  sqrt(x) */
      tag_11
        /* "src/Common.sol":25634:25635  x */
      dup3
        /* "src/Common.sol":25629:25633  sqrt */
      tag_12
        /* "src/Common.sol":25629:25636  sqrt(x) */
      jump	// in
    tag_11:
        /* "src/Common.sol":25622:25636  return sqrt(x) */
      swap3
        /* "src/Common.sol":25549:25643  function run(uint256 x) external pure returns (uint256 result) {... */
      swap2
      pop
      pop
      jump	// out
        /* "src/Common.sol":23099:25411  function sqrt(uint256 x) pure returns (uint256 result) {... */
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
        /* "src/Common.sol":23099:25411  function sqrt(uint256 x) pure returns (uint256 result) {... */
      swap1
      pop
      jump	// out
        /* "src/Common.sol":23160:23197  if (x == 0) {... */
    tag_14:
      pop
        /* "src/Common.sol":23965:23966  1 */
      0x01
        /* "src/Common.sol":23948:23949  x */
      dup2
        /* "src/Common.sol":23984:23992  2 ** 128 */
      0x0100000000000000000000000000000000
        /* "src/Common.sol":23976:23992  xAux >= 2 ** 128 */
      dup2
      lt
        /* "src/Common.sol":23972:24046  if (xAux >= 2 ** 128) {... */
      tag_15
      jumpi
        /* "src/Common.sol":24037:24039  64 */
      0x40
        /* "src/Common.sol":24026:24039  result <<= 64 */
      swap2
      swap1
      swap2
      shl
      swap1
        /* "src/Common.sol":24013:24016  128 */
      0x80
        /* "src/Common.sol":24004:24016  xAux >>= 128 */
      shr
        /* "src/Common.sol":23972:24046  if (xAux >= 2 ** 128) {... */
    tag_15:
        /* "src/Common.sol":24063:24070  2 ** 64 */
      0x010000000000000000
        /* "src/Common.sol":24055:24059  xAux */
      dup2
        /* "src/Common.sol":24055:24070  xAux >= 2 ** 64 */
      lt
        /* "src/Common.sol":24051:24123  if (xAux >= 2 ** 64) {... */
      tag_16
      jumpi
        /* "src/Common.sol":24114:24116  32 */
      0x20
        /* "src/Common.sol":24103:24116  result <<= 32 */
      swap2
      swap1
      swap2
      shl
      swap1
        /* "src/Common.sol":24091:24093  64 */
      0x40
        /* "src/Common.sol":24082:24093  xAux >>= 64 */
      shr
        /* "src/Common.sol":24051:24123  if (xAux >= 2 ** 64) {... */
    tag_16:
        /* "src/Common.sol":24140:24147  2 ** 32 */
      0x0100000000
        /* "src/Common.sol":24132:24136  xAux */
      dup2
        /* "src/Common.sol":24132:24147  xAux >= 2 ** 32 */
      lt
        /* "src/Common.sol":24128:24200  if (xAux >= 2 ** 32) {... */
      tag_17
      jumpi
        /* "src/Common.sol":24191:24193  16 */
      0x10
        /* "src/Common.sol":24180:24193  result <<= 16 */
      swap2
      swap1
      swap2
      shl
      swap1
        /* "src/Common.sol":24168:24170  32 */
      0x20
        /* "src/Common.sol":24159:24170  xAux >>= 32 */
      shr
        /* "src/Common.sol":24128:24200  if (xAux >= 2 ** 32) {... */
    tag_17:
        /* "src/Common.sol":24217:24224  2 ** 16 */
      0x010000
        /* "src/Common.sol":24209:24213  xAux */
      dup2
        /* "src/Common.sol":24209:24224  xAux >= 2 ** 16 */
      lt
        /* "src/Common.sol":24205:24276  if (xAux >= 2 ** 16) {... */
      tag_18
      jumpi
        /* "src/Common.sol":24268:24269  8 */
      0x08
        /* "src/Common.sol":24257:24269  result <<= 8 */
      swap2
      swap1
      swap2
      shl
      swap1
        /* "src/Common.sol":24245:24247  16 */
      0x10
        /* "src/Common.sol":24236:24247  xAux >>= 16 */
      shr
        /* "src/Common.sol":24205:24276  if (xAux >= 2 ** 16) {... */
    tag_18:
        /* "src/Common.sol":24293:24299  2 ** 8 */
      0x0100
        /* "src/Common.sol":24285:24289  xAux */
      dup2
        /* "src/Common.sol":24285:24299  xAux >= 2 ** 8 */
      lt
        /* "src/Common.sol":24281:24350  if (xAux >= 2 ** 8) {... */
      tag_19
      jumpi
        /* "src/Common.sol":24342:24343  4 */
      0x04
        /* "src/Common.sol":24331:24343  result <<= 4 */
      swap2
      swap1
      swap2
      shl
      swap1
        /* "src/Common.sol":24320:24321  8 */
      0x08
        /* "src/Common.sol":24311:24321  xAux >>= 8 */
      shr
        /* "src/Common.sol":24281:24350  if (xAux >= 2 ** 8) {... */
    tag_19:
        /* "src/Common.sol":24367:24373  2 ** 4 */
      0x10
        /* "src/Common.sol":24359:24363  xAux */
      dup2
        /* "src/Common.sol":24359:24373  xAux >= 2 ** 4 */
      lt
        /* "src/Common.sol":24355:24424  if (xAux >= 2 ** 4) {... */
      tag_20
      jumpi
        /* "src/Common.sol":24416:24417  2 */
      0x02
        /* "src/Common.sol":24405:24417  result <<= 2 */
      swap2
      swap1
      swap2
      shl
      swap1
        /* "src/Common.sol":24394:24395  4 */
      0x04
        /* "src/Common.sol":24385:24395  xAux >>= 4 */
      shr
        /* "src/Common.sol":24355:24424  if (xAux >= 2 ** 4) {... */
    tag_20:
        /* "src/Common.sol":24441:24447  2 ** 2 */
      0x04
        /* "src/Common.sol":24433:24437  xAux */
      dup2
        /* "src/Common.sol":24433:24447  xAux >= 2 ** 2 */
      lt
        /* "src/Common.sol":24429:24478  if (xAux >= 2 ** 2) {... */
      tag_21
      jumpi
        /* "src/Common.sol":24470:24471  1 */
      0x01
        /* "src/Common.sol":24459:24471  result <<= 1 */
      dup3
      swap1
      shl
      swap2
      pop
        /* "src/Common.sol":24429:24478  if (xAux >= 2 ** 2) {... */
    tag_21:
        /* "src/Common.sol":24930:24931  1 */
      0x01
        /* "src/Common.sol":24919:24925  result */
      dup3
        /* "src/Common.sol":24915:24916  x */
      dup5
        /* "src/Common.sol":24915:24925  x / result */
      dup2
      tag_23
      jumpi
      tag_23
      tag_24
      jump	// in
    tag_23:
      div
        /* "src/Common.sol":24906:24912  result */
      dup4
        /* "src/Common.sol":24906:24925  result + x / result */
      add
        /* "src/Common.sol":24905:24931  (result + x / result) >> 1 */
      swap1
      shr
        /* "src/Common.sol":24896:24931  result = (result + x / result) >> 1 */
      swap2
      pop
        /* "src/Common.sol":24975:24976  1 */
      0x01
        /* "src/Common.sol":24964:24970  result */
      dup3
        /* "src/Common.sol":24960:24961  x */
      dup5
        /* "src/Common.sol":24960:24970  x / result */
      dup2
      tag_26
      jumpi
      tag_26
      tag_24
      jump	// in
    tag_26:
      div
        /* "src/Common.sol":24951:24957  result */
      dup4
        /* "src/Common.sol":24951:24970  result + x / result */
      add
        /* "src/Common.sol":24950:24976  (result + x / result) >> 1 */
      swap1
      shr
        /* "src/Common.sol":24941:24976  result = (result + x / result) >> 1 */
      swap2
      pop
        /* "src/Common.sol":25020:25021  1 */
      0x01
        /* "src/Common.sol":25009:25015  result */
      dup3
        /* "src/Common.sol":25005:25006  x */
      dup5
        /* "src/Common.sol":25005:25015  x / result */
      dup2
      tag_28
      jumpi
      tag_28
      tag_24
      jump	// in
    tag_28:
      div
        /* "src/Common.sol":24996:25002  result */
      dup4
        /* "src/Common.sol":24996:25015  result + x / result */
      add
        /* "src/Common.sol":24995:25021  (result + x / result) >> 1 */
      swap1
      shr
        /* "src/Common.sol":24986:25021  result = (result + x / result) >> 1 */
      swap2
      pop
        /* "src/Common.sol":25065:25066  1 */
      0x01
        /* "src/Common.sol":25054:25060  result */
      dup3
        /* "src/Common.sol":25050:25051  x */
      dup5
        /* "src/Common.sol":25050:25060  x / result */
      dup2
      tag_30
      jumpi
      tag_30
      tag_24
      jump	// in
    tag_30:
      div
        /* "src/Common.sol":25041:25047  result */
      dup4
        /* "src/Common.sol":25041:25060  result + x / result */
      add
        /* "src/Common.sol":25040:25066  (result + x / result) >> 1 */
      swap1
      shr
        /* "src/Common.sol":25031:25066  result = (result + x / result) >> 1 */
      swap2
      pop
        /* "src/Common.sol":25110:25111  1 */
      0x01
        /* "src/Common.sol":25099:25105  result */
      dup3
        /* "src/Common.sol":25095:25096  x */
      dup5
        /* "src/Common.sol":25095:25105  x / result */
      dup2
      tag_32
      jumpi
      tag_32
      tag_24
      jump	// in
    tag_32:
      div
        /* "src/Common.sol":25086:25092  result */
      dup4
        /* "src/Common.sol":25086:25105  result + x / result */
      add
        /* "src/Common.sol":25085:25111  (result + x / result) >> 1 */
      swap1
      shr
        /* "src/Common.sol":25076:25111  result = (result + x / result) >> 1 */
      swap2
      pop
        /* "src/Common.sol":25155:25156  1 */
      0x01
        /* "src/Common.sol":25144:25150  result */
      dup3
        /* "src/Common.sol":25140:25141  x */
      dup5
        /* "src/Common.sol":25140:25150  x / result */
      dup2
      tag_34
      jumpi
      tag_34
      tag_24
      jump	// in
    tag_34:
      div
        /* "src/Common.sol":25131:25137  result */
      dup4
        /* "src/Common.sol":25131:25150  result + x / result */
      add
        /* "src/Common.sol":25130:25156  (result + x / result) >> 1 */
      swap1
      shr
        /* "src/Common.sol":25121:25156  result = (result + x / result) >> 1 */
      swap2
      pop
        /* "src/Common.sol":25200:25201  1 */
      0x01
        /* "src/Common.sol":25189:25195  result */
      dup3
        /* "src/Common.sol":25185:25186  x */
      dup5
        /* "src/Common.sol":25185:25195  x / result */
      dup2
      tag_36
      jumpi
      tag_36
      tag_24
      jump	// in
    tag_36:
      div
        /* "src/Common.sol":25176:25182  result */
      dup4
        /* "src/Common.sol":25176:25195  result + x / result */
      add
        /* "src/Common.sol":25175:25201  (result + x / result) >> 1 */
      swap1
      shr
        /* "src/Common.sol":25166:25201  result = (result + x / result) >> 1 */
      swap2
      pop
        /* "src/Common.sol":25283:25304  uint256 roundedResult */
      0x00
        /* "src/Common.sol":25311:25317  result */
      dup3
        /* "src/Common.sol":25307:25308  x */
      dup5
        /* "src/Common.sol":25307:25317  x / result */
      dup2
      tag_38
      jumpi
      tag_38
      tag_24
      jump	// in
    tag_38:
      div
        /* "src/Common.sol":25283:25317  uint256 roundedResult = x / result */
      swap1
      pop
        /* "src/Common.sol":25341:25354  roundedResult */
      dup1
        /* "src/Common.sol":25331:25337  result */
      dup4
        /* "src/Common.sol":25331:25354  result >= roundedResult */
      lt
        /* "src/Common.sol":25327:25403  if (result >= roundedResult) {... */
      tag_39
      jumpi
        /* "src/Common.sol":25379:25392  roundedResult */
      dup1
        /* "src/Common.sol":25370:25392  result = roundedResult */
      swap3
      pop
        /* "src/Common.sol":25327:25403  if (result >= roundedResult) {... */
    tag_39:
        /* "src/Common.sol":24876:25409  unchecked {... */
      pop
        /* "src/Common.sol":23154:25411  {... */
      pop
        /* "src/Common.sol":23099:25411  function sqrt(uint256 x) pure returns (uint256 result) {... */
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
      tag_42
      jumpi
        /* "#utility.yul":142:143   */
      0x00
        /* "#utility.yul":139:140   */
      0x00
        /* "#utility.yul":132:144   */
      revert
        /* "#utility.yul":94:146   */
    tag_42:
      pop
        /* "#utility.yul":165:188   */
      calldataload
      swap2
        /* "#utility.yul":14:194   */
      swap1
      pop
      jump	// out
        /* "#utility.yul":381:565   */
    tag_24:
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

    auxdata: 0xa2646970667358221220b5081c70c464486b7e6945b1be50512c38f1d74dff0a78f4843bebfa4a60917a64736f6c634300081e0033
}
