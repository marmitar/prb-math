    /* "src/Common.sol":25101:25217  contract Sqrt {... */
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
        /* "src/Common.sol":25101:25217  contract Sqrt {... */
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
        /* "src/Common.sol":25121:25215  function run(uint256 x) external pure returns (uint256 result) {... */
    tag_3:
      tag_4
      tag_5
      calldatasize
      0x04
      tag_6
      jump	// in
    tag_5:
        /* "src/Common.sol":25168:25182  uint256 result */
      0x00
        /* "src/Common.sol":23844:23845  1 */
      0x01
        /* "src/Common.sol":23342:23376  0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF */
      0xffffffffffffffffffffffffffffffff
      dup4
      gt
        /* "src/Common.sol":23336:23337  7 */
      0x07
        /* "src/Common.sol":23332:23381  shl(7, lt(0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, x)) */
      shl
        /* "src/Common.sol":23457:23471  shr(result, x) */
      dup4
      dup2
      shr
        /* "src/Common.sol":23437:23455  0xFFFFFFFFFFFFFFFF */
      0xffffffffffffffff
        /* "src/Common.sol":23434:23472  lt(0xFFFFFFFFFFFFFFFF, shr(result, x)) */
      lt
        /* "src/Common.sol":23431:23432  6 */
      0x06
        /* "src/Common.sol":23427:23473  shl(6, lt(0xFFFFFFFFFFFFFFFF, shr(result, x))) */
      shl
        /* "src/Common.sol":23416:23474  or(result, shl(6, lt(0xFFFFFFFFFFFFFFFF, shr(result, x)))) */
      or
        /* "src/Common.sol":23542:23556  shr(result, x) */
      dup4
      dup2
      shr
        /* "src/Common.sol":23530:23540  0xFFFFFFFF */
      0xffffffff
        /* "src/Common.sol":23527:23557  lt(0xFFFFFFFF, shr(result, x)) */
      lt
        /* "src/Common.sol":23524:23525  5 */
      0x05
        /* "src/Common.sol":23520:23558  shl(5, lt(0xFFFFFFFF, shr(result, x))) */
      shl
        /* "src/Common.sol":23509:23559  or(result, shl(5, lt(0xFFFFFFFF, shr(result, x)))) */
      or
        /* "src/Common.sol":23623:23637  shr(result, x) */
      dup4
      dup2
      shr
        /* "src/Common.sol":23615:23621  0xFFFF */
      0xffff
        /* "src/Common.sol":23612:23638  lt(0xFFFF, shr(result, x)) */
      lt
        /* "src/Common.sol":23609:23610  4 */
      0x04
        /* "src/Common.sol":23605:23639  shl(4, lt(0xFFFF, shr(result, x))) */
      shl
        /* "src/Common.sol":23594:23640  or(result, shl(4, lt(0xFFFF, shr(result, x)))) */
      or
        /* "src/Common.sol":23701:23715  shr(result, x) */
      dup4
      dup2
      shr
        /* "src/Common.sol":23695:23699  0xFF */
      0xff
        /* "src/Common.sol":23692:23716  lt(0xFF, shr(result, x)) */
      lt
        /* "src/Common.sol":23689:23690  3 */
      0x03
        /* "src/Common.sol":23685:23717  shl(3, lt(0xFF, shr(result, x))) */
      swap1
      dup2
      shl
        /* "src/Common.sol":23674:23718  or(result, shl(3, lt(0xFF, shr(result, x)))) */
      swap1
      swap2
      or
        /* "src/Common.sol":23778:23792  shr(result, x) */
      dup5
      dup2
      shr
        /* "src/Common.sol":23773:23776  0xf */
      0x0f
        /* "src/Common.sol":23770:23793  lt(0xf, shr(result, x)) */
      lt
        /* "src/Common.sol":23767:23768  2 */
      0x02
        /* "src/Common.sol":23763:23794  shl(2, lt(0xf, shr(result, x))) */
      shl
        /* "src/Common.sol":23752:23795  or(result, shl(2, lt(0xf, shr(result, x)))) */
      or
        /* "src/Common.sol":23855:23869  shr(result, x) */
      dup5
      dup2
      shr
        /* "src/Common.sol":23847:23870  lt(0x3, shr(result, x)) */
      swap1
      swap2
      lt
        /* "src/Common.sol":23840:23871  shl(1, lt(0x3, shr(result, x))) */
      dup3
      shl
        /* "src/Common.sol":23829:23872  or(result, shl(1, lt(0x3, shr(result, x)))) */
      or
        /* "src/Common.sol":23925:23939  shr(result, x) */
      dup4
      dup2
      shr
        /* "src/Common.sol":23917:23940  lt(0x1, shr(result, x)) */
      dup3
      lt
        /* "src/Common.sol":23906:23941  or(result, lt(0x1, shr(result, x))) */
      or
        /* "src/Common.sol":23965:23979  shr(1, result) */
      dup2
      shr
        /* "src/Common.sol":23961:23983  shl(shr(1, result), 1) */
      dup2
      dup2
      shl
        /* "src/Common.sol":24505:24519  div(x, result) */
      swap1
      dup5
      swap1
      shr
        /* "src/Common.sol":24493:24520  add(result, div(x, result)) */
      add
        /* "src/Common.sol":24486:24521  shr(1, add(result, div(x, result))) */
      dup2
      shr
        /* "src/Common.sol":24559:24573  div(x, result) */
      dup1
      dup5
      div
        /* "src/Common.sol":24547:24574  add(result, div(x, result)) */
      add
        /* "src/Common.sol":24540:24575  shr(1, add(result, div(x, result))) */
      dup2
      shr
        /* "src/Common.sol":24613:24627  div(x, result) */
      dup1
      dup5
      div
        /* "src/Common.sol":24601:24628  add(result, div(x, result)) */
      add
        /* "src/Common.sol":24594:24629  shr(1, add(result, div(x, result))) */
      dup2
      shr
        /* "src/Common.sol":24667:24681  div(x, result) */
      dup1
      dup5
      div
        /* "src/Common.sol":24655:24682  add(result, div(x, result)) */
      add
        /* "src/Common.sol":24648:24683  shr(1, add(result, div(x, result))) */
      dup2
      shr
        /* "src/Common.sol":24721:24735  div(x, result) */
      dup1
      dup5
      div
        /* "src/Common.sol":24709:24736  add(result, div(x, result)) */
      add
        /* "src/Common.sol":24702:24737  shr(1, add(result, div(x, result))) */
      dup2
      shr
        /* "src/Common.sol":24775:24789  div(x, result) */
      dup1
      dup5
      div
        /* "src/Common.sol":24763:24790  add(result, div(x, result)) */
      add
        /* "src/Common.sol":24756:24791  shr(1, add(result, div(x, result))) */
      dup2
      shr
        /* "src/Common.sol":24829:24843  div(x, result) */
      dup1
      dup5
      div
        /* "src/Common.sol":24817:24844  add(result, div(x, result)) */
      add
        /* "src/Common.sol":24810:24845  shr(1, add(result, div(x, result))) */
      swap1
      shr
        /* "src/Common.sol":24959:24973  div(x, result) */
      dup1
      dup4
      div
        /* "src/Common.sol":24948:24974  gt(result, div(x, result)) */
      dup2
      gt
        /* "src/Common.sol":24936:24975  sub(result, gt(result, div(x, result))) */
      swap1
      sub
        /* "src/Common.sol":25194:25208  return sqrt(x) */
      swap3
        /* "src/Common.sol":25121:25215  function run(uint256 x) external pure returns (uint256 result) {... */
      swap2
      pop
      pop
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
        /* "src/Common.sol":25121:25215  function run(uint256 x) external pure returns (uint256 result) {... */
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

    auxdata: 0xa2646970667358221220cdba8b23421ce04710b705f5c0d0854a12e2aedd4a117aedf0b3c3ad1bbc9b3c64736f6c634300081e0033
}
