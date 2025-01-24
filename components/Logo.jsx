import React from 'react';

const Logo = ({ color }) => {
    return (
        <svg 
        class= {'w-8 ${color} text-teal-accent-400'}
        viewBox = " 0 0 24 24"
        strokeLinejoun="round"
        strokeWidth="2"
        strineLinecap="round"
        strijeMiterlimit="10"
        stroke="currentColor"
        fill="none"
    >
        <rect x="3" y="1" width="7" height="12"/>
        <rect x="3" y="17" width="7" height="6"/>
        <rect x="14" y = "1" width="7" height="6"/>
        <rect x="14" y="11" width="7" height="12"/>
        </svg>
    )
}

export default Logo