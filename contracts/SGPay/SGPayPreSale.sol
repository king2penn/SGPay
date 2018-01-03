pragma solidity ^0.4.11;

import '../crowdsale/singlestage/TokenCappedCrowdsale.sol';


/**
 * @title SimpleCrowdsale
 * @dev This is an example of a fully fledged crowdsale.
 * The way to add new features to a base crowdsale is by multiple inheritance.
 * In order to switch between multistage and single stage, one must also change base contract import of the add-ons.
 * In this example we are providing following extensions:
 * TokenCappedCrowdsale - sets a max boundary for Token sold in milestones
 * RefundableCrowdsale - set a min goal to be reached and returns funds if it's not met
 * After adding multiple features it's good practice to run integration tests
 * to ensure that subcontracts works together as intended.
 */

 // _startTime - 1517479200
 // _endTime - 1518602400
 // _rate - 2125
 // _cap - 2000000e18

contract SGPayPreSale is TokenCappedCrowdsale {


  function SGPayPreSale(uint256 _startTime, uint256 _endTime, uint256 _rate, address _wallet, address controller, uint256 _cap)
    Crowdsale(_startTime, _endTime, _rate, _wallet, controller)
    TokenCappedCrowdsale(_cap)
  {
    // require(_cap.div(rate) > _goal);
  }

}