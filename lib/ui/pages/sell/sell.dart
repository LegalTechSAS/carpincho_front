import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web3modal_flutter/models/w3m_chain_info.dart';
import 'package:web3modal_flutter/services/w3m_service/w3m_service.dart';
import 'package:web3modal_flutter/utils/w3m_chains_presets.dart';
import 'package:web3modal_flutter/web3modal_flutter.dart';
import 'package:web3modal_flutter/widgets/w3m_connect_wallet_button.dart';

class SellPage extends StatefulWidget {
  const SellPage({super.key});

  @override
  State<SellPage> createState() => _SellPageState();
}

class _SellPageState extends State<SellPage> {
  late W3MService _w3mService;

  @override
  void initState() {
    super.initState();
    _initializeService();
  }

  void _onPersonalSign() async {
    _w3mService.launchConnectedWallet();
    var hash = await _w3mService.web3App?.request(
      topic: _w3mService.session!.topic!,
      chainId: 'eip155:$_chainId',
      request: SessionRequestParams(
        method: 'personal_sign',
        params: ['GM from W3M flutter!!', _w3mService.avatarUrl],
      ),
    );
    debugPrint(hash);
  }

  void _initializeService() async {
    W3MChainPresets.chains.putIfAbsent('11155111', () => _sepoliaChain);
    _w3mService = W3MService(
      projectId: "fd864e62769b072862f91049485cf0cd",
      logLevel: LogLevel.error,
      metadata: const PairingMetadata(
        name: "W3M Flutter",
        description: "W3M Flutter test app",
        url: 'https://www.walletconnect.com/',
        icons: ['https://web3modal.com/images/rpc-illustration.png'],
        redirect: Redirect(
          native: 'w3m://',
          universal: 'https://www.walletconnect.com',
        ),
      ),
    );
    await _w3mService.init();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ResponsiveScaledBox(
        width: 450,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Vender",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.inter(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(6, 66, 186, 1)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "TOKENS DISPONIBLES",
                      style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Color.fromRGBO(6, 66, 186, 1)),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 0),
                    child: Text(
                      "598",
                      style: GoogleFonts.inter(
                          fontSize: 80,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(6, 66, 186, 1)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Container(
                    width: double.infinity,
                    height: 300.0, // Set the height
                    decoration: BoxDecoration(
                      color: Colors.transparent, // Transparent background color
                      borderRadius:
                          BorderRadius.circular(30.0), // Rounded corners
                      border: Border.all(
                        color: Color.fromRGBO(6, 66, 186, 1), // Border color
                        width: 2.0, // Border width
                      ),
                    ),

                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.wallet,
                            color: Color.fromRGBO(6, 66, 186, 1),
                            size: 100,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 30),
                            child: SizedBox(
                                width: 390,
                                height: 70,
                                child: W3MConnectWalletButton(
                                  service: _w3mService,
                                )),
                          ),
                        ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 130),
                  child: Text(
                    "Carpincho Labs | 2024",
                    style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Color.fromRGBO(6, 66, 186, 1)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

const _chainId = "11155111";

final _sepoliaChain = W3MChainInfo(
  chainName: 'Sepolia',
  namespace: 'eip155:$_chainId',
  chainId: _chainId,
  tokenName: 'ETH',
  rpcUrl: 'https://rpc.sepolia.org/',
  blockExplorer: W3MBlockExplorer(
    name: 'Sepolia Explorer',
    url: 'https://sepolia.etherscan.io/',
  ),
);
