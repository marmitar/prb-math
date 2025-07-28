    /* "src/Common.sol":27086:27202  contract Sqrt {... */
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
        /* "src/Common.sol":27086:27202  contract Sqrt {... */
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
        /* "src/Common.sol":27106:27200  function run(uint256 x) external pure returns (uint256 result) {... */
    tag_3:
      tag_4
      tag_5
      calldatasize
      0x04
      tag_6
      jump	// in
    tag_5:
        /* "src/Common.sol":25817:25883  0x02030405060707080809090A0A0A0B0B0B0C0C0C0D0D0D0E0E0E0F0F0F0F1010 */
      0x02030405060707080809090a0a0a0b0b0b0c0c0c0d0d0d0e0e0e0f0f0f0f1010
        /* "src/Common.sol":25541:25575  0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF */
      0xffffffffffffffffffffffffffffffff
      dup3
      gt
        /* "src/Common.sol":25535:25536  7 */
      0x07
        /* "src/Common.sol":25531:25580  shl(7, lt(0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, x)) */
      shl
        /* "src/Common.sol":25630:25639  shr(n, x) */
      dup3
      dup2
      shr
        /* "src/Common.sol":25610:25628  0xFFFFFFFFFFFFFFFF */
      0xffffffffffffffff
        /* "src/Common.sol":25607:25640  lt(0xFFFFFFFFFFFFFFFF, shr(n, x)) */
      lt
        /* "src/Common.sol":25604:25605  6 */
      0x06
        /* "src/Common.sol":25600:25641  shl(6, lt(0xFFFFFFFFFFFFFFFF, shr(n, x))) */
      shl
        /* "src/Common.sol":25594:25642  or(n, shl(6, lt(0xFFFFFFFFFFFFFFFF, shr(n, x)))) */
      or
        /* "src/Common.sol":25684:25693  shr(n, x) */
      dup3
      dup2
      shr
        /* "src/Common.sol":25672:25682  0xFFFFFFFF */
      0xffffffff
        /* "src/Common.sol":25669:25694  lt(0xFFFFFFFF, shr(n, x)) */
      lt
        /* "src/Common.sol":25666:25667  5 */
      0x05
        /* "src/Common.sol":25662:25695  shl(5, lt(0xFFFFFFFF, shr(n, x))) */
      shl
        /* "src/Common.sol":25656:25696  or(n, shl(5, lt(0xFFFFFFFF, shr(n, x)))) */
      or
        /* "src/Common.sol":25734:25743  shr(n, x) */
      dup3
      dup2
      shr
        /* "src/Common.sol":25726:25732  0xFFFF */
      0xffff
        /* "src/Common.sol":25723:25744  lt(0xFFFF, shr(n, x)) */
      lt
        /* "src/Common.sol":25720:25721  4 */
      0x04
        /* "src/Common.sol":25716:25745  shl(4, lt(0xFFFF, shr(n, x))) */
      shl
        /* "src/Common.sol":25710:25746  or(n, shl(4, lt(0xFFFF, shr(n, x)))) */
      or
        /* "src/Common.sol":25782:25791  shr(n, x) */
      dup3
      dup2
      shr
        /* "src/Common.sol":25776:25780  0xFF */
      0xff
        /* "src/Common.sol":25773:25792  lt(0xFF, shr(n, x)) */
      lt
        /* "src/Common.sol":25770:25771  3 */
      0x03
        /* "src/Common.sol":25766:25793  shl(3, lt(0xFF, shr(n, x))) */
      swap1
      dup2
      shl
        /* "src/Common.sol":25760:25794  or(n, shl(3, lt(0xFF, shr(n, x)))) */
      swap1
      swap2
      or
        /* "src/Common.sol":25908:25917  shr(n, x) */
      dup4
      dup2
      shr
        /* "src/Common.sol":25901:25918  shr(3, shr(n, x)) */
      swap1
      swap2
      shr
        /* "src/Common.sol":25952:25966  byte(i, table) */
      swap2
      swap1
      swap2
      byte
        /* "src/Common.sol":25945:25946  1 */
      0x01
        /* "src/Common.sol":25941:25950  shr(1, n) */
      swap2
      dup3
      shr
        /* "src/Common.sol":25937:25967  shl(shr(1, n), byte(i, table)) */
      shl
        /* "src/Common.sol":26490:26504  div(x, result) */
      dup1
      dup4
      div
        /* "src/Common.sol":26478:26505  add(result, div(x, result)) */
      add
        /* "src/Common.sol":26471:26506  shr(1, add(result, div(x, result))) */
      dup2
      shr
        /* "src/Common.sol":26544:26558  div(x, result) */
      dup1
      dup4
      div
        /* "src/Common.sol":26532:26559  add(result, div(x, result)) */
      add
        /* "src/Common.sol":26525:26560  shr(1, add(result, div(x, result))) */
      dup2
      shr
        /* "src/Common.sol":26598:26612  div(x, result) */
      dup1
      dup4
      div
        /* "src/Common.sol":26586:26613  add(result, div(x, result)) */
      add
        /* "src/Common.sol":26579:26614  shr(1, add(result, div(x, result))) */
      dup2
      shr
        /* "src/Common.sol":26652:26666  div(x, result) */
      dup1
      dup4
      div
        /* "src/Common.sol":26640:26667  add(result, div(x, result)) */
      add
        /* "src/Common.sol":26633:26668  shr(1, add(result, div(x, result))) */
      dup2
      shr
        /* "src/Common.sol":26706:26720  div(x, result) */
      dup1
      dup4
      div
        /* "src/Common.sol":26694:26721  add(result, div(x, result)) */
      add
        /* "src/Common.sol":26687:26722  shr(1, add(result, div(x, result))) */
      dup2
      shr
        /* "src/Common.sol":26760:26774  div(x, result) */
      dup1
      dup4
      div
        /* "src/Common.sol":26748:26775  add(result, div(x, result)) */
      add
        /* "src/Common.sol":26741:26776  shr(1, add(result, div(x, result))) */
      dup2
      shr
        /* "src/Common.sol":26814:26828  div(x, result) */
      dup1
      dup4
      div
        /* "src/Common.sol":26802:26829  add(result, div(x, result)) */
      add
        /* "src/Common.sol":26795:26830  shr(1, add(result, div(x, result))) */
      swap1
      shr
        /* "src/Common.sol":26944:26958  div(x, result) */
      swap1
      dup2
      swap1
      div
        /* "src/Common.sol":26933:26959  gt(result, div(x, result)) */
      dup2
      gt
        /* "src/Common.sol":26921:26960  sub(result, gt(result, div(x, result))) */
      swap1
      sub
      swap1
        /* "src/Common.sol":27106:27200  function run(uint256 x) external pure returns (uint256 result) {... */
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
        /* "src/Common.sol":27106:27200  function run(uint256 x) external pure returns (uint256 result) {... */
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

    auxdata: 0xa26469706673582212209634b0c6d6e5f48148963ca9edd3af18d38e18caf16201307c262ce867b9b2d464736f6c634300081e0033
}
