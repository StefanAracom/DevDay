import {FC} from "react";
import {GameModel} from "@/models/GameModel";
import Image from "next/image";
import styles from '@/styles/Game.module.css'

const Game: FC<GameModel> = ({ rank, score, title, releaseDate, imageUrl, summary }) => (
    <div style={{ display: 'flex', flex: 0, flexDirection: "row", margin: 16, padding: 16, borderTopWidth: 0, borderLeftWidth: 0, borderRightWidth: 0, borderBottomWidth: 3, borderStyle: 'solid', borderColor: 'grey' }}>
        <img src={imageUrl} width="auto" height="100%" alt={`picture of the game ${title}`} style={{ justifyContent: 'center', alignItems: 'center' }} />
        <div style={{ paddingLeft: 16, paddingRight: 16, minWidth: 0 }}>
            <span style={{ color: 'black', fontWeight: 'bold' }}>{`${rank} `}</span>
            <span style={{ color: 'black', fontWeight: 'bold' }}>{title}</span>
            <span style={{ color: 'grey' }}>{` - ${releaseDate}`}</span>
            <span className={styles.truncate} style={{ display: 'flex', flex: 1, flexDirection: 'column', color: 'black', marginTop: 16 }}>{summary}</span>
        </div>
        <div style={{ display: 'flex', flexDirection: 'column', marginLeft: 'auto', justifyContent: 'center', alignItems: 'center' }}>
            <span style={{ color: 'white', textAlign: 'center', backgroundColor: 'green', padding: 32 }}>{score}</span>
        </div>
    </div>
)

export default Game
